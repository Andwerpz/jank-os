#!/usr/bin/env bash
set -euo pipefail

# at top (after set -euo pipefail)
umask 022   # or 000 if you want group/others write by default

USER_DIR="${1:-./user}"
IMG="${2:-drive.img}"
IMG_SIZE="${3:-64M}"
MNT="${4:-.mnt_drive}"

# Best effort to detect the "real" user even when script uses sudo internally
REAL_USER="${SUDO_USER:-${USER}}"
REAL_GROUP="$(id -gn "${REAL_USER}")"

if [[ ! -d "$USER_DIR" ]]; then
  echo "ERROR: USER_DIR '$USER_DIR' does not exist" >&2
  exit 1
fi

# Cleanup handler to unmount on error/exit
cleanup() {
  set +e
  if mountpoint -q "$MNT"; then
    sudo umount "$MNT"
  fi
  rmdir "$MNT" 2>/dev/null || true
}
trap cleanup EXIT

echo "[*] Creating sparse image: $IMG ($IMG_SIZE)"
truncate -s "$IMG_SIZE" "$IMG"

echo "[*] Formatting ext2: mkfs.ext2 -F -b 1024 -r 0 $IMG"
mkfs.ext2 -F -b 1024 -r 0 "$IMG" >/dev/null

# Ensure the image file is accessible even if created by root
echo "[*] Adjusting image file permissions"
# Take ownership if needed (safe even if already yours)
sudo chown "${REAL_USER}:${REAL_GROUP}" "$IMG" || true
# Make world-writable if that's what you want; otherwise use 0644
sudo chmod 0666 "$IMG" || truev

# Make sure we can traverse the mountpoint directory
sudo mkdir -p "$MNT"
sudo chmod 0755 "$MNT"

echo "[*] Mounting at $MNT"
sudo mount -o loop "$IMG" "$MNT"

echo "[*] Syncing $USER_DIR -> $MNT"
# If you don't need xattrs/ACLs, you can drop -HAX
sudo rsync -aHAX --delete --inplace "$USER_DIR/" "$MNT/"

sync
echo "[*] Unmounting"
sudo umount "$MNT"
rmdir "$MNT" 2>/dev/null || true

# After sudo umount "$MNT" and rmdir:
echo "[*] Finalizing image permissions"
sudo chown "${REAL_USER}:${REAL_GROUP}" "$IMG" || true
sudo chmod 0666 "$IMG" || true

# --- SELinux (optional) ---
# If you're on Fedora/RHEL etc. and get "Permission denied" from QEMU
# due to SELinux, uncomment one of the lines below as appropriate:
# if command -v getenforce >/dev/null && [[ "$(getenforce)" != "Disabled" ]]; then
#   # Let qemu read/write user images in your home
#   sudo chcon -t svirt_home_t "$IMG"
#   # Or for a dedicated directory:
#   # sudo chcon -R -t svirt_sandbox_file_t /path/to/images
# fi

echo "[✓] Built $IMG from $USER_DIR"
