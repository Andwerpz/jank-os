#!/usr/bin/env bash
set -e

# create fonts
ld -r -b binary -o font.o font.psf

jjc kernel/kernel.jank -S -o kernel.s -k
x86_64-elf-gcc -ffreestanding -mcmodel=large -mno-red-zone -mno-mmx -mno-sse -mno-sse2 -c kernel.s -o kernel.o
x86_64-elf-gcc -ffreestanding -T link.ld kernel.o font.o -o boot/kernel.out -nostdlib

./mkbootimg config.json myos.img
# qemu-system-x86_64 myos.img -serial stdio
# qemu-system-x86_64 -d int,cpu_reset -no-reboot -serial stdio myos.img -m 4G

# normal + debug
qemu-system-x86_64 -d int,cpu_reset -no-reboot -serial stdio myos.img

# server 
# qemu-system-x86_64 -no-reboot -serial telnet:localhost:4321,server,nowait myos.img

# server + debug
# qemu-system-x86_64 -d int,cpu_reset -no-reboot -serial telnet:localhost:4321,server,nowait myos.img

# telnet localhost 4321
