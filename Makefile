# create bootable drive
.PHONY: drive
drive:
	@bash ./build_drive_partitioned.sh

# build user (path, sys) programs
.PHONY: user
user:
	make -C ./user

# create and boot from drive
.PHONY: boot
boot: drive user
	@mkdir -p build
	@cp /usr/share/OVMF/OVMF_VARS_4M.fd ./build/OVMF_VARS_4M.work.fd
	qemu-system-x86_64 \
		-machine q35 \
		-m 2G \
		-no-reboot \
		-serial stdio \
		-device qemu-xhci,id=xhci \
		-drive if=pflash,format=raw,readonly=on,file=/usr/share/OVMF/OVMF_CODE_4M.fd \
		-drive if=pflash,format=raw,file=./build/OVMF_VARS_4M.work.fd \
		-device ich9-ahci,id=ahci \
		-drive file=drive.img,if=none,id=bootdisk,format=raw \
		-device ide-hd,bus=ahci.0,drive=bootdisk,bootindex=0 \
		-drive file=usb.img,if=none,id=usbdisk,format=raw \
		-device usb-storage,bus=xhci.0,drive=usbdisk

.PHONY: boot_usb
boot_usb: drive user
	@mkdir -p build
	@cp /usr/share/OVMF/OVMF_VARS_4M.fd ./build/OVMF_VARS_4M.work.fd
	qemu-system-x86_64 \
		-machine q35 \
		-m 2G \
		-no-reboot \
		-serial stdio \
		-device qemu-xhci,id=xhci \
		-device usb-hub,bus=xhci.0,id=hub0 \
		-drive if=pflash,format=raw,readonly=on,file=/usr/share/OVMF/OVMF_CODE_4M.fd \
		-drive if=pflash,format=raw,file=./build/OVMF_VARS_4M.work.fd \
		-drive file=drive.img,if=none,id=usbdisk,format=raw \
		-device usb-storage,bus=xhci.0,drive=usbdisk,bootindex=0 

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