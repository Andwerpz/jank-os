#!/usr/bin/env bash
set -euo pipefail

BDF="${1:-0000:00:14.0}"
DEV="/sys/bus/pci/devices/$BDF"

if [[ $EUID -ne 0 ]]; then
  echo "ERROR: run as root (sudo)." >&2
  exit 1
fi
if [[ ! -d "$DEV" ]]; then
  echo "ERROR: PCI device $BDF not found at $DEV" >&2
  exit 1
fi

echo "[*] Restoring $BDF to host driver via drivers_probe"

# Unbind from current driver if any
if [[ -L "$DEV/driver" ]]; then
  cur_driver="$(basename "$(readlink -f "$DEV/driver")")"
  echo "[*] Unbinding $BDF from $cur_driver"
  echo "$BDF" > "$DEV/driver/unbind"
fi

# Clear override so kernel chooses normal driver
echo "" > "$DEV/driver_override"

# Load the module that provides the xHCI PCI binding
modprobe xhci_pci >/dev/null 2>&1 || true

# Reprobe (binds to xhci_hcd on success)
echo "$BDF" > /sys/bus/pci/drivers_probe

# Verify
lspci -k -s "${BDF#0000:}"
