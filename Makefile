
# build user (path, sys) programs
.PHONY: user
user:
	make -C ./user

# create bootable drive
.PHONY: drive
drive: user
	@bash ./build_drive_partitioned.sh

# flag to tell qemu to print interrupts
# -d int

# create and boot from drive
.PHONY: boot
boot: drive 
	@mkdir -p build
	@cp /usr/share/OVMF/OVMF_VARS_4M.fd ./build/OVMF_VARS_4M.work.fd
	sudo qemu-system-x86_64 \
		-machine q35 \
		-m 2G \
		-no-reboot \
		-serial stdio \
		-device nec-usb-xhci,id=xhci,msi=on,msix=off \
		-drive if=pflash,format=raw,readonly=on,file=/usr/share/OVMF/OVMF_CODE_4M.fd \
		-drive if=pflash,format=raw,file=./build/OVMF_VARS_4M.work.fd \
		-device ich9-ahci,id=ahci \
		-drive file=drive.img,if=none,id=bootdisk,format=raw \
		-device ide-hd,bus=ahci.0,drive=bootdisk,bootindex=0 \
		-netdev user,id=net0,hostfwd=udp::1234-:1234 -device e1000,netdev=net0,mac=52:54:00:12:34:56 \
		-object filter-dump,id=f1,netdev=net0,file=jankos.pcap 
# 		-d int

.PHONY: boot_usb
boot_usb: drive
	@mkdir -p build
	@cp /usr/share/OVMF/OVMF_VARS_4M.fd ./build/OVMF_VARS_4M.work.fd
	sudo -E qemu-system-x86_64 \
		-machine q35 \
		-m 2G \
		-no-reboot \
		-serial stdio \
		-device nec-usb-xhci,id=xhci,msi=on,msix=off \
		-device usb-hub,bus=xhci.0,id=hub0 \
		-drive if=pflash,format=raw,readonly=on,file=/usr/share/OVMF/OVMF_CODE_4M.fd \
		-drive if=pflash,format=raw,file=./build/OVMF_VARS_4M.work.fd \
		-drive file=drive.img,if=none,id=usbdisk,format=raw \
		-device usb-storage,bus=xhci.0,drive=usbdisk,bootindex=0 \

# boot from physical USB, emulated xHCI 
.PHONY: boot_phys_usb
boot_phys_usb:
	@mkdir -p build
	@cp /usr/share/OVMF/OVMF_VARS_4M.fd ./build/OVMF_VARS_4M.work.fd
	sudo -E qemu-system-x86_64 \
		-machine q35 \
		-m 2G \
		-no-reboot \
		-serial stdio \
		-device qemu-xhci,id=xhci \
		-device usb-hub,bus=xhci.0,id=hub0 \
		-drive if=pflash,format=raw,readonly=on,file=/usr/share/OVMF/OVMF_CODE_4M.fd \
		-drive if=pflash,format=raw,file=./build/OVMF_VARS_4M.work.fd \
		-device usb-host,hostdevice=/dev/bus/usb/001/002,bus=xhci.0,bootindex=0

# boot from physical USB, physical xHCI
# need to make sure xhci is bound to vfio
.PHONY: boot_phys_xhci
boot_phys_xhci: drive
	@mkdir -p build
	@cp /usr/share/OVMF/OVMF_VARS_4M.fd ./build/OVMF_VARS_4M.work.fd
	sudo -E qemu-system-x86_64 \
		-machine q35 \
		-m 2G \
		-no-reboot \
		-serial stdio \
		-drive if=pflash,format=raw,readonly=on,file=/usr/share/OVMF/OVMF_CODE_4M.fd \
		-drive if=pflash,format=raw,file=./build/OVMF_VARS_4M.work.fd \
		-device vfio-pci,host=0000:00:14.0 \
		-device vfio-pci,host=0000:00:14.2 


# real USB passthrough
# -device usb-host,hostdevice=/dev/bus/usb/001/004,bus=xhci.0

# real xHCI controller passthrough
# -device vfio-pci,host=0000:00:14.0

# clean up
clean:
	rm -rf build 2>/dev/null || true
	rm drive.img 

# build user tests, boot the OS
.PHONY: test
test:
	@set -e; \
	echo "Building user tests…"; \
	cd user/home/testing; \
	make; \
	./main build-tests; \
	echo "Returning to repo root"; \
	cd ../../../; 