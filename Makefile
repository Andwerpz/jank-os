# compile kernel
jankos:
	@mkdir build build/kernel 2>/dev/null | true
	@cp -r config/boot build 2>/dev/null | true
	ld -r -b binary -o build/kernel/font.o kernel/font.psf
	jjc kernel/src/kernel.jank -S -o build/kernel/kernel.s -k -time
	x86_64-elf-gcc -ffreestanding -mcmodel=large -mno-red-zone -mno-mmx -mno-sse -mno-sse2 -c build/kernel/kernel.s -o build/kernel/kernel.o
	x86_64-elf-gcc -ffreestanding -T kernel/link.ld build/kernel/kernel.o build/kernel/font.o -o build/boot/kernel.out -nostdlib

# create an initial ram disk image with the kernel inside
initdir: jankos
	@mkdir build/initrd build/initrd/sys 2>/dev/null | true
	cp build/boot/kernel.out build/initrd/sys/core

# create hybrid disk / cdrom image or ROM image
disk: initdir config/config.json
	@cp config/config.json build 2>/dev/null | true
	cd build && ../mkbootimg config.json jankos-disk.img
	@rm -rf build/initrd

# create drive from ./user folder
.PHONY: drive
drive:
	@bash ./build_drive_partitioned.sh

normal: disk drive
	qemu-system-x86_64 \
    -no-reboot \
    -serial stdio \
    -device ich9-ahci,id=ahci \
    -drive file=build/jankos-disk.img,if=none,id=bootdisk,format=raw \
    -device ide-hd,bus=ahci.0,drive=bootdisk \
    -drive file=drive.img,if=none,id=disk,format=raw \
    -device ide-hd,bus=ahci.1,drive=disk

# debug flags: `-d int,cpu_reset`
debug: disk drive
	qemu-system-x86_64 \
    -no-reboot \
	-d int,cpu_reset \
    -serial stdio \
    -device ich9-ahci,id=ahci \
    -drive file=build/jankos-disk.img,if=none,id=bootdisk,format=raw \
    -device ide-hd,bus=ahci.0,drive=bootdisk \
    -drive file=drive.img,if=none,id=disk,format=raw \
    -device ide-hd,bus=ahci.1,drive=disk

# boot directly from partitioned drive
.PHONY: boot
boot: jankos drive
	@mkdir -p build
	@cp /usr/share/OVMF/OVMF_VARS_4M.fd ./build/OVMF_VARS_4M.work.fd
	qemu-system-x86_64 \
		-machine q35 \
		-m 2G \
		-no-reboot \
		-serial stdio \
		-drive if=pflash,format=raw,readonly=on,file=/usr/share/OVMF/OVMF_CODE_4M.fd \
		-drive if=pflash,format=raw,file=./build/OVMF_VARS_4M.work.fd \
		-device ich9-ahci,id=ahci \
		-drive file=drive.img,if=none,id=bootdisk,format=raw \
		-device ide-hd,bus=ahci.0,drive=bootdisk,bootindex=0

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
	cd ../../../; \
	echo "Booting OS via 'make normal' (QEMU)…"; \
	$(MAKE) normal; \