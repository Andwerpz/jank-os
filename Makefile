# compile kernel
jankos:
	@mkdir build build/kernel 2>/dev/null | true
	@cp -r config/boot build 2>/dev/null | true
	ld -r -b binary -o build/kernel/font.o kernel/font.psf
	jjc kernel/src/kernel.jank -S -o build/kernel/kernel.s -k
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

# test the disk image
# debug flags: `-d int,cpu_reset -no-reboot`

normal: disk
	qemu-system-x86_64 \
    -d int,cpu_reset \
    -no-reboot \
    -serial stdio \
    -device ich9-ahci,id=ahci \
    -drive file=build/jankos-disk.img,if=none,id=mydisk \
    -device ide-hd,bus=ahci.0,drive=mydisk

telnet: disk
	qemu-system-x86_64 \
    -no-reboot \
    -serial telnet:localhost:4321,server,nowait \
    -device ich9-ahci,id=ahci \
    -drive file=build/jankos-disk.img,if=none,id=mydisk \
    -device ide-hd,bus=ahci.0,drive=mydisk

# clean up
clean:
	rm -rf build 2>/dev/null || true
