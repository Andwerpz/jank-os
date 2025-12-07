#!/usr/bin/env bash
set -euo pipefail

umask 022   # or 000 if you want group/others write by default

USER_DIR="${1:-./user}"
IMG="${2:-drive.img}"
IMG_SIZE="${3:-64M}"
MNT="${4:-.mnt_drive}"
BOOTLOADER="${5:-./bootloader/stage1/mbr.bin}"   # <- your stage-1 MBR bootloader

# Best effort to detect the "real" user even when script uses sudo internally
REAL_USER="${SUDO_USER:-${USER}}"
REAL_GROUP="$(id -gn "${REAL_USER}")"

if [[ ! -d "$USER_DIR" ]]; then
  echo "ERROR: USER_DIR '$USER_DIR' does not exist" >&2
  exit 1
fi

if [[ ! -f "$BOOTLOADER" ]]; then
  echo "ERROR: BOOTLOADER '$BOOTLOADER' does not exist" >&2
  exit 1
fi

LOOP=""

cleanup() {
  set +e
  if mountpoint -q "$MNT"; then
    sudo umount "$MNT"
  fi
  if [[ -n "${LOOP:-}" ]]; then
    sudo losetup -d "$LOOP" 2>/dev/null || true
  fi
  rmdir "$MNT" 2>/dev/null || true
}
trap cleanup EXIT

echo "[*] Creating sparse disk image: $IMG ($IMG_SIZE)"
truncate -s "$IMG_SIZE" "$IMG"

echo "[*] Writing MBR with two partitions (p1 dummy, p2 ext2)"
# Partition layout:
#   - p1: starts at 1 MiB (LBA 2048), size 8 MiB, type 0xAB, marked bootable
#   - p2: rest of disk, type 0x83 (Linux filesystem / ext2)
sudo sfdisk "$IMG" <<EOF
label: dos

2048,8M,0xAB,*
,,0x83
EOF

echo "[*] Attaching loop device (with partition scan)"
LOOP="$(sudo losetup --find --show -P "$IMG")"
echo "    -> loop device: $LOOP"

PART1="${LOOP}p1"
PART2="${LOOP}p2"

echo "[*] Writing stage2 bootloader to start of partition 1"
sudo dd if=./bootloader/stage2/stage2.bin of="$PART1" bs=512 conv=notrunc

# Wait briefly for partition nodes to appear
for _ in {1..10}; do
  if [[ -b "$PART2" ]]; then
    break
  fi
  sleep 0.2
done

if [[ ! -b "$PART2" ]]; then
  echo "ERROR: Partition device $PART2 not found" >&2
  exit 1
fi

echo "[*] Formatting ext2 on partition 2 (rev 0, 1 KiB blocks): $PART2"
sudo mkfs.ext2 -F -b 1024 -r 0 "$PART2" >/dev/null

echo "[*] Preparing mountpoint $MNT"
sudo mkdir -p "$MNT"
sudo chmod 0755 "$MNT"

echo "[*] Mounting partition 2 at $MNT"
sudo mount "$PART2" "$MNT"

echo "[*] Syncing $USER_DIR -> $MNT"
sudo rsync -aHAX --delete --inplace "$USER_DIR/" "$MNT/"

sync
echo "[*] Unmounting"
sudo umount "$MNT"
rmdir "$MNT" 2>/dev/null || true

echo "[*] Detaching loop device"
sudo losetup -d "$LOOP"
LOOP=""

echo "[*] Installing MBR bootloader from $BOOTLOADER into $IMG"
# Overwrite only the first 446 bytes (boot code), keep partition table + signature
dd if="$BOOTLOADER" of="$IMG" bs=446 count=1 conv=notrunc

echo "[*] Finalizing image permissions"
sudo chown "${REAL_USER}:${REAL_GROUP}" "$IMG" || true
sudo chmod 0666 "$IMG" || true

echo "[✓] Built bootable MBR-partitioned $IMG"
echo "    - p1: dummy (8 MiB, type 0x83, bootable)"
echo "    - p2: ext2 (rev 0, 1 KiB blocks) populated from $USER_DIR"
echo "    - MBR boot code from: $BOOTLOADER"
