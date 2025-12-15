#!/usr/bin/env bash
set -euo pipefail
umask 022

# Usage:
#   ./make_mbr_uefi_img.sh [USER_DIR] [IMG] [IMG_SIZE] [MNT] [EFI_BIN] [KERNEL_BIN]
#
# Defaults:
USER_DIR="${1:-./user}"
IMG="${2:-drive.img}"
IMG_SIZE="${3:-128M}"
MNT="${4:-.mnt_drive}"
EFI_BIN_ARG="${5:-./bootloader/uefi/build/BOOTX64.EFI}"
KERNEL_BIN_ARG="${6:-./build/boot/kernel.out}"

EFI_BIN="${EFI_BIN:-$EFI_BIN_ARG}"         # allow override via env var
KERNEL_BIN="${KERNEL_BIN:-$KERNEL_BIN_ARG}" # allow override via env var

# Size of FAT partition (ESP-ish) on MBR.
# need around 40MB to reach the minimum number of clusters on a FAT32 filesystem
ESP_SIZE="${ESP_SIZE:-40M}"

REAL_USER="${SUDO_USER:-${USER}}"
REAL_GROUP="$(id -gn "${REAL_USER}")"

need_cmd() {
  command -v "$1" >/dev/null 2>&1 || { echo "ERROR: missing command: $1" >&2; exit 1; }
}

need_cmd sfdisk
need_cmd losetup
need_cmd mkfs.vfat
need_cmd mkfs.ext2
need_cmd mount
need_cmd rsync
need_cmd objcopy

if [[ ! -d "$USER_DIR" ]]; then
  echo "ERROR: USER_DIR '$USER_DIR' does not exist" >&2
  exit 1
fi

if [[ ! -f "$KERNEL_BIN" ]]; then
  echo "ERROR: KERNEL_BIN '$KERNEL_BIN' not found" >&2
  exit 1
fi

LOOP=""

cleanup() {
  set +e
  if mountpoint -q "$MNT/esp"; then sudo umount "$MNT/esp"; fi
  if mountpoint -q "$MNT/root"; then sudo umount "$MNT/root"; fi
  if [[ -n "${LOOP:-}" ]]; then sudo losetup -d "$LOOP" 2>/dev/null || true; fi
  rmdir "$MNT/esp" 2>/dev/null || true
  rmdir "$MNT/root" 2>/dev/null || true
  rmdir "$MNT" 2>/dev/null || true
}
trap cleanup EXIT

echo "[*] Creating sparse disk image: $IMG ($IMG_SIZE)"
truncate -s "$IMG_SIZE" "$IMG"

echo "[*] Writing MBR (dos) with two partitions:"
echo "    - p1: FAT32, type 0xEF, size $ESP_SIZE"
echo "    - p2: ext2,  type 0x83, rest of disk"
sudo sfdisk "$IMG" <<EOF
label: dos
unit: sectors

# start=2048 for 1MiB alignment. size auto if blank.
start=2048, size=${ESP_SIZE}, type=ef, bootable
type=83
EOF

echo "[*] Attaching loop device (with partition scan)"
LOOP="$(sudo losetup --find --show -P "$IMG")"
echo "    -> loop device: $LOOP"

PART1="${LOOP}p1"
PART2="${LOOP}p2"

for _ in {1..30}; do
  [[ -b "$PART1" && -b "$PART2" ]] && break
  sleep 0.2
done

if [[ ! -b "$PART1" || ! -b "$PART2" ]]; then
  echo "ERROR: Partition devices not found: $PART1 / $PART2" >&2
  exit 1
fi

echo "[*] Formatting p1 as FAT32"
sudo mkfs.vfat -F 32 -n EFI "$PART1" >/dev/null

echo "[*] Formatting p2 as ext2 (rev 0, 1 KiB blocks)"
sudo mkfs.ext2 -F -b 1024 -r 0 "$PART2" >/dev/null

echo "[*] Preparing mountpoints under $MNT"
sudo mkdir -p "$MNT/esp" "$MNT/root"
sudo chmod 0755 "$MNT" "$MNT/esp" "$MNT/root"

echo "[*] Mounting p1 (FAT) at $MNT/esp"
sudo mount "$PART1" "$MNT/esp"

# Install UEFI loader
echo "[*] Building UEFI bootloader (make -C ./bootloader/uefi)"
make -C "./bootloader/uefi"

if [[ -f "$EFI_BIN" ]]; then
  echo "[*] Installing UEFI loader -> /EFI/BOOT/BOOTX64.EFI"
  sudo mkdir -p "$MNT/esp/EFI/BOOT"
  sudo cp -f "$EFI_BIN" "$MNT/esp/EFI/BOOT/BOOTX64.EFI"
else
  echo "[!] EFI_BIN '$EFI_BIN' not found; leaving FAT partition without BOOTX64.EFI"
  echo "    (Image will not UEFI-boot unless you copy an .efi loader into /EFI/BOOT/BOOTX64.EFI)"
fi


# Install kernel binary 
echo "[*] Converting kernel ELF -> flat binary"
KERNEL_BIN_FLAT="$(mktemp)"
trap 'rm -f "$KERNEL_BIN_FLAT"' EXIT

objcopy -O binary "$KERNEL_BIN" "$KERNEL_BIN_FLAT"

echo "[*] Installing kernel -> /EFI/JANKOS/KERNEL.BIN"
sudo mkdir -p "$MNT/esp/EFI/JANKOS"
sudo cp -f "$KERNEL_BIN_FLAT" "$MNT/esp/EFI/JANKOS/KERNEL.BIN"


echo "[*] Mounting p2 (ext2) at $MNT/root"
sudo mount "$PART2" "$MNT/root"

echo "[*] Syncing $USER_DIR -> ext2 partition"
sudo rsync -aHAX --delete --inplace "$USER_DIR/" "$MNT/root/"

sync
echo "[*] Unmounting"
sudo umount "$MNT/root"
sudo umount "$MNT/esp"

echo "[*] Detaching loop device"
sudo losetup -d "$LOOP"
LOOP=""

echo "[*] Finalizing image permissions"
sudo chown "${REAL_USER}:${REAL_GROUP}" "$IMG" || true
sudo chmod 0666 "$IMG" || true

echo "[✓] Built MBR-partitioned UEFI-style image: $IMG"
echo "    - p1: FAT32 type 0xEF"
echo "         * /EFI/BOOT/BOOTX64.EFI (if provided)"
echo "         * /EFI/JANKOS/KERNEL.BIN from: $KERNEL_BIN"
echo "    - p2: ext2 populated from $USER_DIR"
