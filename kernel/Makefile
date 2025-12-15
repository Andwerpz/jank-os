# Incremental kernel build:
# rebuilds only when anything under ./src changes, or when font/linker script changes.

BUILD := ./build
SRC_DIR := ./src

FONT_PSF   := ./font.psf
FONT_O     := $(BUILD)/font.o

KERNEL_S    := $(BUILD)/kernel.s
KERNEL_O    := $(BUILD)/kernel.o
KERNEL_ELF  := $(BUILD)/kernel.elf
KERNEL_BIN  := $(BUILD)/kernel.bin

JJC     := jjc
CC      := x86_64-elf-gcc
LD      := ld
OBJCOPY := objcopy

CFLAGS  := -ffreestanding -mcmodel=large -mno-red-zone -mno-mmx -mno-sse -mno-sse2
LDFLAGS := -ffreestanding -T ./link.ld -nostdlib

# Any change anywhere in ./src triggers regeneration of kernel.s (and everything downstream)
SRC_FILES := $(shell find $(SRC_DIR) -type f)

.PHONY: all clean
all: $(KERNEL_BIN)

$(BUILD):
	@mkdir -p $(BUILD)

$(FONT_O): $(FONT_PSF) | $(BUILD)
	$(LD) -r -b binary -o $@ $<

$(KERNEL_S): $(SRC_FILES) | $(BUILD)
	$(JJC) $(SRC_DIR)/kernel.jank -S -o $@ -k -time

$(KERNEL_O): $(KERNEL_S)
	$(CC) $(CFLAGS) -c $< -o $@

$(KERNEL_ELF): $(KERNEL_O) $(FONT_O) ./link.ld
	$(CC) $(LDFLAGS) $(KERNEL_O) $(FONT_O) -o $@

$(KERNEL_BIN): $(KERNEL_ELF)
	$(OBJCOPY) -O binary $< $@

clean:
	rm -rf $(BUILD)
