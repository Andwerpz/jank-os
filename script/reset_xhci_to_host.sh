#!/usr/bin/env bash
set -euo pipefail

BDF="${1:-0000:00:14.0}"
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

# Pick restore driver:
# 1) previously saved driver
# 2) fallback to xhci_pci (usual PCI driver backing xhci_hcd)
restore_driver="xhci_pci"
if [[ -f "$STATE_FILE" ]]; then
  saved="$(cat "$STATE_FILE" || true)"
  if [[ -n "$saved" && "$saved" != "none" && "$saved" != "vfio-pci" ]]; then
    restore_driver="$saved"
  fi
fi

echo "[*] Restoring $BDF to host driver: $restore_driver"

# Unbind from current driver if any
if [[ -L "$DEV/driver" ]]; then
  cur_driver="$(basename "$(readlink -f "$DEV/driver")")"
  echo "[*] Unbinding $BDF from $cur_driver"
  echo "$BDF" > "$DEV/driver/unbind"
fi

# Clear override so normal matching works again
# (empty string is correct)
echo "" > "$DEV/driver_override"

# Ensure the target driver is loaded
modprobe "$restore_driver" >/dev/null 2>&1 || true

# Bind to the chosen host driver
if [[ -e "/sys/bus/pci/drivers/$restore_driver/bind" ]]; then
  echo "$BDF" > "/sys/bus/pci/drivers/$restore_driver/bind"
else
  echo "ERROR: /sys/bus/pci/drivers/$restore_driver/bind not found. Driver may not exist." >&2
  exit 1
fi

# Verify
new_driver="none"
if [[ -L "$DEV/driver" ]]; then
  new_driver="$(basename "$(readlink -f "$DEV/driver")")"
fi
echo "[*] Driver now: $new_driver"
