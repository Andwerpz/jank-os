#!/usr/bin/env bash
set -euo pipefail

umask 022

USER_DIR="${1:-./user}"
IMG="${2:-drive.img}"
IMG_SIZE="${3:-64M}"
MNT="${4:-.mnt_drive}"
BOOT_MBR="${BOOT_MBR:-}"   # optional; set env var BOOT_MBR=/path/to/mbr.bin if you want boot code installed

# Best effort to detect the "real" user even when script uses sudo internally
REAL_USER="${SUDO_USER:-${USER}}"
REAL_GROUP="$(id -gn "${REAL_USER}")"

if [[ ! -d "$USER_DIR" ]]; then
  echo "ERROR: USER_DIR '$USER_DIR' does not exist" >&2
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

echo "[*] Writing MBR with one Linux (0x83) partition spanning the disk"
sudo sfdisk "$IMG" <<EOF
label: dos
,,0x83,*
EOF

echo "[*] Attaching loop device (with partition scan)"
LOOP="$(sudo losetup --find --show -P "$IMG")"
echo "    -> loop device: $LOOP"

PART1="${LOOP}p1"

# Wait briefly for partition node to appear
for _ in {1..20}; do
  if [[ -b "$PART1" ]]; then
    break
  fi
  sleep 0.2
done

if [[ ! -b "$PART1" ]]; then
  echo "ERROR: Partition device $PART1 not found" >&2
  exit 1
fi

echo "[*] Formatting ext2 on $PART1 (rev 0, 1 KiB blocks)"
sudo mkfs.ext2 -F -b 1024 -r 0 "$PART1" >/dev/null

echo "[*] Preparing mountpoint $MNT"
sudo mkdir -p "$MNT"
sudo chmod 0755 "$MNT"

echo "[*] Mounting $PART1 at $MNT"
sudo mount "$PART1" "$MNT"

echo "[*] Syncing $USER_DIR -> $MNT"
sudo rsync -aHAX --delete --inplace "$USER_DIR/" "$MNT/"

sync
echo "[*] Unmounting"
sudo umount "$MNT"
rmdir "$MNT" 2>/dev/null || true

echo "[*] Detaching loop device"
sudo losetup -d "$LOOP"
LOOP=""

if [[ -n "$BOOT_MBR" ]]; then
  if [[ ! -f "$BOOT_MBR" ]]; then
    echo "ERROR: BOOT_MBR '$BOOT_MBR' not found" >&2
    exit 1
  fi
  echo "[*] Installing MBR bootloader from $BOOT_MBR into $IMG"
  # Overwrite only the first 446 bytes (boot code), keep partition table + signature
  dd if="$BOOT_MBR" of="$IMG" bs=446 count=1 conv=notrunc status=none
else
  echo "[*] BOOT_MBR not set; leaving default MBR boot code unchanged"
fi

echo "[*] Finalizing image permissions"
sudo chown "${REAL_USER}:${REAL_GROUP}" "$IMG" || true
sudo chmod 0666 "$IMG" || true

echo "[✓] Built MBR-partitioned $IMG"
echo "    - p1: ext2 (rev 0, 1 KiB blocks) populated from $USER_DIR"
if [[ -n "$BOOT_MBR" ]]; then
  echo "    - MBR boot code from: $BOOT_MBR"
fi
