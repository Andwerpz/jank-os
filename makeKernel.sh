jjc kernel.jank -S -o kernel.s
x86_64-elf-gcc -ffreestanding -mcmodel=large -mno-red-zone -mno-mmx -mno-sse -mno-sse2 -c kernel.s -o kernel.o
x86_64-elf-gcc -ffreestanding -T link.ld kernel.o -o kernel.out -nostdlib -lgcc
