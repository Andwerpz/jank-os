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
	@sudo bash ./build_drive.sh

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

# clean up
clean:
	rm -rf build 2>/dev/null || true
	rm drive.img 
