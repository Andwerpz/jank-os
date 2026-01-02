GROUP=4
for d in /sys/kernel/iommu_groups/$GROUP/devices/*; do
  bdf=$(basename "$d")
  echo "=== $bdf ==="
  lspci -nn -s "$bdf"
  lspci -k  -s "$bdf"
  echo
done
