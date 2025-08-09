# platform
PLATFORM=x86
# the path to OVMF.fd
OVMF=/usr/share/qemu/OVMF.fd

all: jankos initdir disk bios

# compile kernel
jankos:
	ld -r -b binary -o kernel/font.o kernel/font.psf
	jjc ../kernel/kernel.jank -S -o kernel/kernel.s -k
	x86_64-elf-gcc -ffreestanding -mcmodel=large -mno-red-zone -mno-mmx -mno-sse -mno-sse2 -c kernel/kernel.s -o kernel/kernel.o
	x86_64-elf-gcc -ffreestanding -T kernel/link.ld kernel/kernel.o kernel/font.o -o boot/kernel.out -nostdlib

# create an initial ram disk image with the kernel inside
initdir: jankos
	@mkdir initrd initrd/sys 2>/dev/null | true
ifeq ($(PLATFORM),x86)
	cp boot/kernel.out initrd/sys/core
endif

# create hybrid disk / cdrom image or ROM image
disk: initdir mkbootimg/config.json
	mkbootimg/mkbootimg mkbootimg/config.json mkbootimg/disk-$(PLATFORM).img
	@rm -rf initrd

# test the disk image
# debug flags: `-d int,cpu_reset -no-reboot`

# bios: disk
# 	qemu-system-x86_64 \
#     -d int,cpu_reset \
#     -no-reboot \
#     -serial stdio \
#     -device ich9-ahci,id=ahci \
#     -drive file=mkbootimg/disk-x86.img,if=none,id=mydisk \
#     -device ide-hd,bus=ahci.0,drive=mydisk

bios: disk
	qemu-system-x86_64 \
    -no-reboot \
    -serial telnet:localhost:4321,server,nowait \
    -device ich9-ahci,id=ahci \
    -drive file=mkbootimg/disk-x86.img,if=none,id=mydisk \
    -device ide-hd,bus=ahci.0,drive=mydisk

# clean up
clean:
	rm -rf boot/*.out kernel/*.o kernel/*.s initrd mkbootimg/*.img 2>/dev/null || true
