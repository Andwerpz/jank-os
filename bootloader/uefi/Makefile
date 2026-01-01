# --------
# Layout
# --------
SRC_DIR   := ./src
BUILD_DIR := ./build
MAIN      := boot.c

ARCH      := x86_64
APP       := BOOTX64
EFI       := $(BUILD_DIR)/$(APP).EFI

OBJ       := $(BUILD_DIR)/boot.o
SO        := $(BUILD_DIR)/boot.so

# --------
# Toolchain
# --------
CC      := gcc
LD      := ld
OBJCOPY := objcopy

# --------
# GNU-EFI includes / flags
# --------
EFI_INC := -I/usr/include/efi -I/usr/include/efi/$(ARCH) -I/usr/include/efi/protocol

CFLAGS  := $(EFI_INC) \
           -fpic -fshort-wchar -mno-red-zone \
           -fno-stack-protector -fno-asynchronous-unwind-tables \
		   -ffreestanding -fno-builtin 

CFLAGS += -ffreestanding -fno-stack-protector -fno-stack-clash-protection \
          -fno-asynchronous-unwind-tables -fno-unwind-tables \
          -mno-red-zone -fshort-wchar -fpic -fcf-protection=none

CFLAGS += -g -O0 -fno-inline

CFLAGS += -DEFI_FUNCTION_WRAPPER

# --------
# Locate gnu-efi CRT + linker script (paths vary by distro)
# --------
CRT0 ?= $(firstword $(wildcard \
  /usr/lib/*/gnu-efi/crt0-efi-$(ARCH).o \
  /usr/lib/gnu-efi/crt0-efi-$(ARCH).o \
  /usr/lib/crt0-efi-$(ARCH).o \
))

LDS ?= $(firstword $(wildcard \
  /usr/lib/*/gnu-efi/elf_$(ARCH)_efi.lds \
  /usr/lib/gnu-efi/elf_$(ARCH)_efi.lds \
  /usr/lib/elf_$(ARCH)_efi.lds \
))

# Library search paths (vary by distro packaging)
LIBDIRS := -L/usr/lib -L/usr/lib/gnu-efi -L/usr/lib/$(ARCH)-linux-gnu -L/usr/lib/$(ARCH)-linux-gnu/gnu-efi

LDFLAGS := -nostdlib -znocombreloc -shared -Bsymbolic $(LIBDIRS) -T $(LDS)

# --------
# Targets
# --------
.PHONY: all clean dirs

all: dirs $(EFI)

dirs:
	@mkdir -p $(BUILD_DIR)

$(OBJ): $(SRC_DIR)/$(MAIN) | dirs
	$(CC) $(CFLAGS) -c $< -o $@

$(SO): $(OBJ)
	@test -n "$(CRT0)" || (echo "ERROR: could not find crt0-efi-$(ARCH).o (install gnu-efi)"; exit 1)
	@test -n "$(LDS)"  || (echo "ERROR: could not find elf_$(ARCH)_efi.lds (install gnu-efi)"; exit 1)
	$(LD) $(LDFLAGS) $(CRT0) $(OBJ) -o $@ -lgnuefi -lefi

$(EFI): $(SO)
	$(OBJCOPY) -j .text -j .sdata -j .data -j .rodata -j .dynamic -j .dynsym \
           	-j .rel -j .rela -j .reloc \
           	--target=efi-app-$(ARCH) $< $@

clean:
	rm -rf $(BUILD_DIR)
