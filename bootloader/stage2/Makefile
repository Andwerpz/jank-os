AS       = as
LD       = ld
OBJCOPY  = objcopy

ASFLAGS  = --32
LDFLAGS  = -m elf_i386 -Ttext 0x8000 -nostdlib -e stage2_start

# Default target: just build mbr.bin
all: stage2.bin

stage2.o: stage2.S
	$(AS) $(ASFLAGS) -o $@ $<

stage2.elf: stage2.o
	$(LD) $(LDFLAGS) -o $@ $<

stage2.bin: stage2.elf
	$(OBJCOPY) -O binary $< $@

clean:
	rm -f stage2.o stage2.elf stage2.bin
