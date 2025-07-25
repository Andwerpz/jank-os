AS      = x86_64-elf-gcc
LD      = x86_64-elf-gcc

CFLAGS  = -ffreestanding -mno-red-zone -mno-mmx -mno-sse -mno-sse2 -c
LDFLAGS = -ffreestanding -T user.ld -nostdlib

SRC     ?= main.s                                
OBJ     := $(SRC:.s=.o)
OUT     := $(SRC:.s=.out)

all: $(OUT)

$(OBJ): $(SRC)
	$(AS) $(CFLAGS) $< -o $@

$(OUT): $(OBJ)
	$(LD) $(LDFLAGS) $< -o $@

clean:
	rm -f *.o *.out
