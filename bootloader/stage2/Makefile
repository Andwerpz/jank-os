AS       = as
LD       = ld
OBJCOPY  = objcopy
JJC      = jjc
CC64     = x86_64-elf-gcc

ASFLAGS   = --32
LDFLAGS32 = -m elf_i386 -Ttext 0x8000 -nostdlib -e stage2_start

BUILD    = build
SRC      = src
BIN      = bin

all: $(BIN)/stage2.bin

# -------------------------
# 64-bit jank part
# -------------------------

$(BUILD)/64bit.s: $(SRC)/64bit.jank
	@mkdir -p $(BUILD)
	$(JJC) $< -S -o $@ -k -time -nodefincl

$(BUILD)/64bit.o: $(BUILD)/64bit.s
	$(CC64) -ffreestanding -mcmodel=large -mno-red-zone -mno-mmx -mno-sse -mno-sse2 -c $< -o $@

$(BUILD)/64bit.elf: $(BUILD)/64bit.o
	$(CC64) -ffreestanding -nostdlib -Ttext 0x0 $< -o $@

$(BUILD)/64bit.bin: $(BUILD)/64bit.elf
	$(OBJCOPY) -O binary $< $@

# Wrap the 64-bit blob as a *32-bit* ELF object
$(BUILD)/64bit_blob.o: $(BUILD)/64bit.bin
	$(LD) -m elf_i386 -r -b binary -o $@ $<

# -------------------------
# 16/32-bit stub part
# -------------------------

$(BUILD)/stub.o: $(SRC)/stub.S
	@mkdir -p $(BUILD)
	$(AS) $(ASFLAGS) -o $@ $<

$(BUILD)/stage2.elf: $(BUILD)/stub.o $(BUILD)/64bit_blob.o
	$(LD) $(LDFLAGS32) -o $@ $^

$(BIN)/stage2.bin: $(BUILD)/stage2.elf
	@mkdir -p $(BIN)
	$(OBJCOPY) -O binary $< $@

clean:
	rm -rf $(BUILD) $(BIN)/stage2.bin
