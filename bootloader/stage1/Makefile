AS       = as
LD       = ld
OBJCOPY  = objcopy

ASFLAGS  = --32
LDFLAGS  = -m elf_i386 -Ttext 0x7C00 -nostdlib -e start

# Default target: just build mbr.bin
all: mbr.bin

mbr.o: mbr.S
	$(AS) $(ASFLAGS) -o $@ $<

mbr.elf: mbr.o
	$(LD) $(LDFLAGS) -o $@ $<

mbr.bin: mbr.elf
	$(OBJCOPY) -O binary $< $@

clean:
	rm -f mbr.o mbr.elf mbr.bin
