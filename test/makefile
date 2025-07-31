AS      = x86_64-elf-gcc
LD      = x86_64-elf-gcc

CFLAGS  = -ffreestanding -mno-red-zone -mno-mmx -mno-sse -mno-sse2 -c
LDFLAGS = -ffreestanding -T user.ld -nostdlib

# Default target if no specific file given
SRC     ?= main.s                                
OBJ     := $(SRC:.s=.o)
OUT     := $(SRC:.s=.out)

all: $(OUT)

# Generic rule: build any .out from corresponding .s file
%.out: %.o
	$(LD) $(LDFLAGS) $< -o $@

# Generic rule: build any .o from corresponding .s file  
%.o: %.s
	$(AS) $(CFLAGS) $< -o $@

# Legacy rules for backwards compatibility
$(OBJ): $(SRC)
	$(AS) $(CFLAGS) $< -o $@

$(OUT): $(OBJ)
	$(LD) $(LDFLAGS) $< -o $@

clean:
	rm -f *.o *.out
