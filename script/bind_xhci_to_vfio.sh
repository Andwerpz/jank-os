#!/usr/bin/env bash
set -euo pipefail

BDF="${1:-0000:00:14.0}"    # check this via `lspci`
DEV="/sys/bus/pci/devices/$BDF"
STATE_DIR="/var/lib/vfio-bind"
STATE_FILE="$STATE_DIR/$BDF.driver"

if [[ $EUID -ne 0 ]]; then
  echo "ERROR: run as root (sudo)." >&2
  exit 1
fi

if [[ ! -d "$DEV" ]]; then
  echo "ERROR: PCI device $BDF not found at $DEV" >&2
  exit 1
fi

mkdir -p "$STATE_DIR"

# Make sure VFIO modules are present
modprobe vfio >/dev/null 2>&1 || true
modprobe vfio_iommu_type1 >/dev/null 2>&1 || true
modprobe vfio-pci >/dev/null 2>&1 || true

# Must have IOMMU group
if [[ ! -e "$DEV/iommu_group" ]]; then
  echo "ERROR: $BDF has no iommu_group. IOMMU likely not enabled (intel_iommu=on)." >&2
  exit 1
fi

# Record current driver so we can restore later
cur_driver="none"
if [[ -L "$DEV/driver" ]]; then
  cur_driver="$(basename "$(readlink -f "$DEV/driver")")"
fi
echo "$cur_driver" > "$STATE_FILE"
echo "[*] $BDF current driver: $cur_driver (saved to $STATE_FILE)"

# Unbind from current driver, if any
if [[ -L "$DEV/driver" ]]; then
  echo "[*] Unbinding $BDF from $cur_driver"
  echo "$BDF" > "$DEV/driver/unbind"
fi

# Force vfio-pci via driver_override
echo "[*] Binding $BDF to vfio-pci"
echo "vfio-pci" > "$DEV/driver_override"
echo "$BDF" > /sys/bus/pci/drivers/vfio-pci/bind

new_driver="none"
if [[ -L "$DEV/driver" ]]; then
  new_driver="$(basename "$(readlink -f "$DEV/driver")")"
fi

if [[ "$new_driver" != "vfio-pci" ]]; then
  echo "ERROR: failed to bind $BDF to vfio-pci (driver now: $new_driver)" >&2
  exit 1
fi

grp="$(basename "$(readlink -f "$DEV/iommu_group")")"
echo "[*] Success: $BDF -> vfio-pci"
echo "[*] IOMMU group: $grp (node: /dev/vfio/$grp)"
ls -l /dev/vfio || true
ls -l "/dev/vfio/$grp" 2>/dev/null || true
