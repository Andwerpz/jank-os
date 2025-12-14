# assembly stub is responsible for setting up a few things:
# - retrieving e820 memory map
# - loading kernel into memory
# - initializing paging
# - identity mapping low 1GB
# - enabling long mode
# - jump to 64 bit jank bootloader code

    .section .text

# -- 16-bit mode --
    .code16
.global stage2_start
stage2_start:
    # disable hardware interrupts
    cli

    # save %dl 
    movb %dl, boot_drive

    # clear data segments
    xorw    %ax, %ax
    movw    %ax, %ds
    movw    %ax, %es
    movw    %ax, %ss
    movw    $0x7000, %sp        # setup stack below code

    # enable A20
    # if A20 is disabled, memory will wrap around at 1MB
    call enable_a20

    # get memory map using E820
    call get_e820_map
    call bios_print_e820_map

    # load GDT
    lgdt gdt_descriptor

    # enable protected mode: CR0.PE = 1
    movl    %cr0, %eax
    orl     $0x1, %eax
    movl    %eax, %cr0

    # far jump into 32-bit mode (CS = 0x08)
    ljmp    $0x08, $pm32_entry

# Disk Address Packet (DAP) for int 0x13 extended read
.align 16
dap:
dap_size:
    .byte 0x10          # size of packet in bytes
dap_reserved:
    .byte 0             # reserved
dap_sectors:
    .word 0             # number of sectors to read (set at runtime)
dap_buf_off:
    .word 0             # buffer offset (set at runtime)
dap_buf_seg:
    .word 0             # buffer segment (set at runtime)
dap_lba_low:
    .long 0             # low 32 bits of LBA (set at runtime)
dap_lba_high:
    .long 0             # high 32 bits of LBA = 0 for our small disk

drive_read_status:
    .byte 0             # 0 = ok, 1 = error

# spot to save cr0 before jumping back to 16-bit mode
pm32_cr0:
    .long 0

# gotten from MBR
boot_drive:
    .byte 0

# enable A20 using the "fast A20" gate at port 0x92
enable_a20:
    pushw   %ax
    pushw   %dx

    # DX = 0x92
    movw    $0x92, %dx

    # read current value from port 0x92 into AL
    inb     %dx, %al

    # set bit 1 (A20 enable), keep other bits unchanged
    orb     $0x02, %al

    # write it back
    outb    %al, %dx

    popw    %dx
    popw    %ax
    ret

idt_real:
    .word 0x03FF        # limit
    .long 0x00000000    # base = 0 (IVT)

# store E820 entries at 0x0000:0x0500
E820_BUF_SEG      = 0x0000
E820_BUF_OFF      = 0x0500

#   struct e820_ent {
#       u64 base;
#       u64 length;
#       u32 type;    # 1 = usable RAM
#       u32 attr;    # ACPI extended attributes (often 0)
#   }
E820_ENTRY_SIZE   = 24
E820_MAX_ENTRIES  = 32

# will contain the number of valid entries
e820_entry_count:
    .word 0

# --------------------------------------------------------------------------------
# get_e820_map:
#  - https://wiki.osdev.org/Detecting_Memory_(x86)#BIOS_Function:_INT_0x15,_EAX_=_0xE820
#  - must be called in 16-bit real mode
#  - writes up to E820_MAX_ENTRIES starting at 0x500
#  - stores number of entries in e820_entry_count
# --------------------------------------------------------------------------------
get_e820_map:
    pushaw                          # save AX,BX,CX,DX,SI,DI,BP,SP 
    pushw   %ds
    pushw   %es

    # set ES to desired segment for buffer
    movw    $E820_BUF_SEG, %ax
    movw    %ax, %es
    movw    $E820_BUF_OFF, %di      # ES:DI -> first entry

    # initialize entry counter
    xorw    %bx, %bx                # EBX = 0
    xorw    %bp, %bp                # BP = entry count

.e820_next:
    movl    $0xE820, %eax           # EAX = 0xE820 (BIOS function)
    movl    $0x534D4150, %edx       # EDX = 'SMAP' ('SMAP' in ASCII)
    movl    $E820_ENTRY_SIZE, %ecx  # ECX = buffer size
    # ES:DI already points to buffer for this entry

    int     $0x15                   # BIOS E820 call
    jc      .e820_done              # CF = 1 -> error or end

    # EAX must return 'SMAP' to be valid
    cmp     $0x534D4150, %eax
    jne     .e820_done

    # if BIOS call was successful
    # one entry has been written at ES:DI

    # advance DI to next slot
    addw    $E820_ENTRY_SIZE, %di
    incw    %bp                     # BP = count++

    # if EBX = 0, we're done (no more entries)
    testl   %ebx, %ebx
    jz      .e820_done

    # stop if we've hit our max entry count
    cmpw    $E820_MAX_ENTRIES, %bp
    jb      .e820_next

.e820_done:
    # save the count
    movw    %bp, e820_entry_count

    popw    %es
    popw    %ds
    popaw                           # restore AX,BX,CX,DX,SI,DI,BP,SP 
    ret

# print a single character in AL using BIOS teletype (int 0x10, AH=0x0E)
bios_print_char:
    pushw   %ax
    pushw   %bx
    movb    $0x0E, %ah      # teletype
    movb    $0x07, %bl      # attribute: light gray on black
    int     $0x10
    popw    %bx
    popw    %ax
    ret

# print a zero-terminated string at DS:SI
bios_print_str:
    pushw   %ax
    pushw   %si
.bios_print_str_loop:
    lodsb                   # AL = [DS:SI], SI++
    testb   %al, %al
    jz      .bios_print_str_done
    call    bios_print_char
    jmp     .bios_print_str_loop
.bios_print_str_done:
    popw    %si
    popw    %ax
    ret

# print CRLF
bios_print_nl:
    pushw   %ax
    movb    $'\r', %al
    call    bios_print_char
    movb    $'\n', %al
    call    bios_print_char
    popw    %ax
    ret

# print "0x"
bios_print_0x:
    pushw   %ax
    movb    $'0', %al
    call    bios_print_char
    movb    $'x', %al
    call    bios_print_char
    popw    %ax
    ret

# print_hex_nibble: low 4 bits of AL -> '0'..'F'
bios_print_hex_nibble:   
    pushw   %ax
    andb    $0x0F, %al
    cmpb    $9, %al
    jbe     1f
    addb    $7, %al         # 'A' - '0' - 10
1:
    addb    $'0', %al
    call    bios_print_char
    popw    %ax
    ret

# print_hex16: AX = 16-bit value
# prints 4 hex digits
bios_print_hex16:
    pushw   %ax
    pushw   %bx
    pushw   %cx

    movw    %ax, %bx        # copy value
    movb    $4, %cl

.bios_ph16_loop:
    movw    %bx, %ax
    shrw    $12, %ax        # top nibble into low 4 bits
    call    bios_print_hex_nibble
    shlw    $4, %bx         # shift next nibble up
    decb    %cl
    jnz     .bios_ph16_loop

    popw    %cx
    popw    %bx
    popw    %ax
    ret

# print_hex32: DX:AX = 32-bit value
# prints 8 hex digits
bios_print_hex32:
    pushw   %ax
    pushw   %dx

    pushw   %ax
    movw    %dx, %ax
    call    bios_print_hex16
    popw    %ax
    call    bios_print_hex16

    popw    %dx
    popw    %ax
    ret


# print all E820 entries that were stored by get_e820_map
msg_header:
    .asciz "E820 memory map:"
msg_base:
    .asciz "base="
msg_len:
    .asciz ", len="
msg_type:
    .asciz ", type="
msg_attr:
    .asciz ", attr="

bios_print_e820_map:
    pushw   %ax
    pushw   %bx
    pushw   %cx
    pushw   %dx
    pushw   %si
    pushw   %di

    # Print header
    movw    $msg_header, %si
    call    bios_print_str
    call    bios_print_nl

    # Load count
    movw    e820_entry_count, %cx
    cmpw    $0, %cx
    je      .done             # nothing to print

    # DS should already be 0; if not, zero it:
    xorw    %ax, %ax
    movw    %ax, %ds

    # SI = offset of first entry
    movw    $E820_BUF_OFF, %si

.entry_loop:
    movw    %si, %di          # DI = entry pointer

    # Print "base="
    pushw   %si               # save entry pointer
    movw    $msg_base, %si
    call    bios_print_str
    popw    %si

    # base, offset +0
    call    bios_print_0x
    movw    4(%si), %ax
    movw    6(%si), %dx
    call    bios_print_hex32
    movw    0(%si), %ax
    movw    2(%si), %dx
    call    bios_print_hex32

    # Print ", len="
    pushw   %si               # save entry pointer
    movw    $msg_len, %si
    call    bios_print_str
    popw    %si

    # length, offset +8
    call    bios_print_0x
    movw    12(%si), %ax
    movw    14(%si), %dx
    call    bios_print_hex32
    movw    8(%si), %ax
    movw    10(%si), %dx
    call    bios_print_hex32

    # Print ", type="
    pushw   %si               # save entry pointer
    movw    $msg_type, %si
    call    bios_print_str
    popw    %si

    # type (low 16 bits) at offset +16
    movw    16(%si), %ax
    call    bios_print_hex16

    # print ", attr="
    pushw   %si               # save entry pointer
    movw    $msg_attr, %si
    call    bios_print_str
    popw    %si

    # attr (low 16 bits) at offset +20
    movw    20(%si), %ax
    call    bios_print_hex16

    call    bios_print_nl    

    # advance to next entry
    addw    $E820_ENTRY_SIZE, %si
    decw    %cx
    jnz     .entry_loop

.done:
    popw    %di
    popw    %si
    popw    %dx
    popw    %cx
    popw    %bx
    popw    %ax
    ret    


# -- 32-bit mode --
    .code32
pm32_entry:
    # set data segments
    movw    $0x10, %ax
    movw    %ax, %ds
    movw    %ax, %es
    movw    %ax, %ss
    movl    $0x7000, %esp        # reset stack

    call vga_clear_screen
    call vga_reset_cursor
    movl $msg_hello32, %esi
    call vga_print_str

    # populate boot info e820 map and boot drive fields
    movl    $BOOT_INFO, %esi
    movl    $E820_BUF_OFF, %eax         # e820_ent* e820_mmap, low 32 bits
    movl    %eax, 0(%esi)               
    xorl    %eax, %eax                  # e820_ent* e820_mmap, high 32 bits
    movl    %eax, 4(%esi)               
    movw    e820_entry_count, %ax       # u16 e820_entry_count
    movw    %ax, 8(%esi)                
    movb    boot_drive, %al             # u8 boot_drive
    movb    %al, 10(%esi)       

    # reserve some memory (10 MB) for allocs and kernel code
    call find_reserved_region

    # load kernel code into memory
    call load_kernel

    # build pagetables
    # identity map the first 1GB
    call build_pagetables

    # enable Physical Address Extension (CR4.PAE = 1)
    # allows 32-bit processor to access more than 4gb of memory
    movl    %cr4, %edx
    orl     $0x20, %edx                 # bit 5 = PAE
    movl    %edx, %cr4

    # set CR3 to PML4 physical address
    movl    $pml4_table, %eax            
    movl    %eax, %cr3

    # enable long mode in EFER (IA32_EFER.LME) 
    movl    $0xC0000080, %ecx           # IA32_EFER MSR
    rdmsr                               # EDX:EAX = EFER
    orl     $0x00000100, %eax           # set LME bit (bit 8)
    wrmsr

    # enable paging (CR0.PG)
    movl    %cr0, %edx
    orl     $0x80000000, %edx           # bit 31 = PG
    movl    %edx, %cr0

    # far jump into 64-bit code segment 
    # CS = 0x18 (64-bit code), RIP = lm64_entry
    ljmp    $0x18, $lm64_entry

# this address should be hardcoded into jank code
.equ BOOT_INFO, 0x1000

# struct boot_info layout 
.equ BOOT_E820_MMAP_OFF,        0       # e820_ent* 
.equ BOOT_E820_COUNT_OFF,       8       # u16
.equ BOOT_BOOT_DRIVE_OFF,       10      # u8
.equ BOOT_RESERVED_START_OFF,   11      # void* 
.equ BOOT_RESERVED_SZ_OFF,      19      # u64
.equ BOOT_KCODE_START_OFF,      27      # u64

.equ PAGE_SIZE,                 0x1000
.equ PAGE_MASK,                 0xFFFFF000
.equ MB,                        0x00100000

.equ RESERVED_TOTAL_SIZE,       (10*MB)
.equ KERNEL_REGION_OFFSET,      (5*MB) 

# where is the kernel on the disk
.equ KERNEL_LBA_START_LO,       0x00000000  # low 32 bits of LBA
.equ KERNEL_LBA_START_HI,       0x00000000  # high 32 bits of LBA
.equ KERNEL_SECTOR_COUNT,       0x00001000  # 0x1000 * 512 = 2 MiB

.equ BIOS_BUF_SZ,               0x2000      # 8kb
.equ MAX_SECTORS_PER_READ,      (BIOS_BUF_SZ / 512)     # anything more than 128 is problematic

# --------------------------------------------------------------------------------
# load_kernel:
# - writes
#     boot_info->kcode_start = boot_info->reserved_start + KERNEL_REGION_OFFSET
# - loads the kernel into memory using BIOS
# --------------------------------------------------------------------------------
load_kernel:
    # eax = reserved_start (low 32 bits)
    movl BOOT_INFO + BOOT_RESERVED_START_OFF, %eax

    # add upper 5 MiB offset
    addl $KERNEL_REGION_OFFSET, %eax

    # store into boot_info->kcode_start (64-bit, high dword = 0)
    movl %eax, BOOT_INFO + BOOT_KCODE_START_OFF
    movl $0,   BOOT_INFO + BOOT_KCODE_START_OFF + 4

    # ----------------- init LBA / remaining / destination -------------------
    movl $KERNEL_LBA_START_LO, %edx         # %edx = current LBA (low 32)
    movl $KERNEL_SECTOR_COUNT, %ebp        # %ebp = remaining sectors
    movl BOOT_INFO + BOOT_KCODE_START_OFF, %ebx   # %ebx = dest_phys

.load_kernel_loop:
    # if (remaining == 0) done
    testl %ebp, %ebp
    jz .load_kernel_done

    # chunk = min(remaining, MAX_SECTORS_PER_READ)
    movl %ebp, %eax
    cmpl $MAX_SECTORS_PER_READ, %eax
    jbe .chunk_ok
    movl $MAX_SECTORS_PER_READ, %eax
.chunk_ok:
    # EAX = sector read count

    # build DAP
    movw %ax, dap_sectors              # sectors to read

    # buffer pointer = physical address of bios_buf (assume identity map)
    movl $bios_buf, %ecx               # ecx = phys(bios_buf)

    pushl %eax
    movl %ecx, %eax                    # eax = phys
    movl %ecx, %edx                    # edx = phys

    andl $0xF, %eax                    # offset = phys & 0xF
    shrl $4, %edx                      # segment = phys >> 4

    movw %ax, dap_buf_off
    movw %dx, dap_buf_seg
    popl %eax

    # starting LBA (qword)
    movl %edx, dap_lba_low             # edx currently holds current LBA
    movl $KERNEL_LBA_START_HI, dap_lba_high

    # read from drive using bios
    call bios_read_drive

    cmpb $0, drive_read_status
    jne .load_kernel_err               # handle error

    # copy from buffer to final destination
    movl $bios_buf, %esi               # src = bounce buffer
    movl %ebx, %edi                    # dst = dest_phys

    movl %eax, %ecx                    # ecx = chunk
    shll $7, %ecx                      # ecx = chunk * 128 dwords (512/4)

    rep movsl                          # copy chunk * 512 bytes

    # dest_phys += chunk * 512
    movl %eax, %ecx
    shll $9, %ecx                      # bytes = chunk << 9
    addl %ecx, %ebx

    # current_lba += chunk
    addl %eax, %edx

    # remaining -= chunk
    subl %eax, %ebp

    movl %ebp, %eax
    call vga_clear_screen
    call vga_reset_cursor
    call vga_print_hex32

    jmp .load_kernel_loop

.load_kernel_done:
    ret

.load_kernel_err:
    movl $'E', %eax
    call vga_print_char

    jmp hlt_loop

# --------------------------------------------------------------------------------
# bios_read_drive:
# - expects DAP to be populated
# - jumps to real mode to perform BIOS read
# - returns to 32-bit mode
# --------------------------------------------------------------------------------
bios_read_drive:
    pushfl
    pushal
    cli

    movl $'A', %eax
    call vga_print_char

    # turn off protected mode and paging
    movl %cr0, %eax
    movl %eax, pm32_cr0
    andl $0x7FFFFFFE, %eax
    movl %eax, %cr0

    movl $'C', %eax
    call vga_print_char

    movb boot_drive, %dl
    movw $dap, %si
    #xorl %eax, %eax
    #movb %dl, %al
    #call vga_print_hex16

    # far jump to 16-bit real-mode entry (CS=0x0000)
    ljmp $0x0000, $.bios_read_rm16_entry

    .code16
.bios_read_rm16_entry:
    cli
    xorw %ax, %ax
    movw %ax, %ds
    movw %ax, %es
    movw %ax, %ss

    # AH=0x42: Extended Read Sectors
    movb $0x42, %ah
    movb boot_drive, %dl        # BIOS drive number saved earlier
    movw $dap, %si              # DS:SI -> DAP (DS = 0)

    int  $0x13
    ud2
    jc   .bios_read_err_rm16

    movb $0, drive_read_status
    jmp  .bios_read_done_rm16

.bios_read_err_rm16:
    movb $1, drive_read_status

.bios_read_done_rm16:
    cli
    # back to 32-bit protected mode
    # lgdt gdt_descriptor
    # movl %cr0, %eax
    # orl  $0x1, %eax             # set PE
    # movl %eax, %cr0

    # far jump to 32-bit code segment (selector 0x08)
    ljmp $0x08, $.bios_read_pm32_ret

    .code32
.bios_read_pm32_ret:
    # enable 32-bit segment registers
    movw    $0x10, %ax
    movw    %ax, %ds
    movw    %ax, %es
    movw    %ax, %ss

    # restore old cr0
    movl pm32_cr0, %eax
    movl %eax, %cr0
    jmp 1f
1:

    movl $'B', %eax
    call vga_print_char

    popfl
    popal
    ret

# --------------------------------------------------------------------------------
# find reserved region:
# - uses E820 map in boot_info->e820_mmap
# - finds first usable region (type == 1) that can fit 10 MB aligned to PAGE_SIZE
# - only works if there is a usable region that starts within the first 4 GB
# - writes:
#     boot_info->reserved_start = start
#     boot_info->reserved_sz    = RESERVED_TOTAL_SIZE
# --------------------------------------------------------------------------------
find_reserved_region:
    # boot_info->reserved_start = 0 
    movl $0, BOOT_INFO + BOOT_RESERVED_START_OFF
    movl $0, BOOT_INFO + BOOT_RESERVED_START_OFF + 4

    # boot_info->reserved_sz = RESERVED_TOTAL_SIZE
    movl $RESERVED_TOTAL_SIZE,  BOOT_INFO + BOOT_RESERVED_SZ_OFF
    movl $0,                    BOOT_INFO + BOOT_RESERVED_SZ_OFF + 4

    # EDI = e820_mmap base (low 32 bits)
    movl BOOT_INFO + BOOT_E820_MMAP_OFF, %edi

    # ECX = e820_entry_count (zero-extend 16-bit)
    movzwl BOOT_INFO + BOOT_E820_COUNT_OFF, %ecx

    # ESI = loop index i = 0
    xorl %esi, %esi

e820_loop:
    # if (i >= e820_entry_count) break;
    cmp %ecx, %esi
    jae  e820_done

    # Compute ent pointer: ent = (uint8_t*)mmap + i * E820_ENTRY_SIZE
    movl %esi, %eax                # eax = i
    imull $E820_ENTRY_SIZE, %eax   # eax = i * E820_ENTRY_SIZE
    movl %edi, %ebx                # ebx = base pointer
    addl %eax, %ebx                # ebx = ent pointer

    # ent->type (u32) at offset 16
    movl 16(%ebx), %edx
    cmpl $1, %edx
    jne  e820_next                 # skip if not "usable RAM"

    # base (low 32 bits) at offset 0
    movl 0(%ebx), %eax             # eax = base

    # length (low 32 bits) at offset 8
    movl 8(%ebx), %edx             # edx = length

    # orig_end = base + length  (32-bit)
    movl %eax, %ebp                # ebp = orig_base
    addl %edx, %eax                # eax = orig_end = base + length

    # aligned_base = align_up(orig_base, PAGE_SIZE)
    movl %ebp, %edx                # edx = orig_base
    addl $(PAGE_SIZE - 1), %edx
    andl $PAGE_MASK, %edx          # edx = aligned_base

    # if (aligned_base >= orig_end) continue;
    cmpl %eax, %edx                # edx - eax
    jae  e820_next

    # new_length = orig_end - aligned_base
    movl %eax, %eax                # eax already = orig_end
    subl %edx, %eax                # eax = orig_end - aligned_base

    # new_length = align_down(new_length, PAGE_SIZE)
    andl $PAGE_MASK, %eax          # eax = new_length (page-aligned)

    # reserved_sz (low 32 bits) in EBP
    movl BOOT_INFO + BOOT_RESERVED_SZ_OFF, %ebp

    # if (new_length < reserved_sz) continue;
    cmpl %ebp, %eax                # eax - ebp
    jb   e820_next

    # Found a region: reserved_start = aligned_base (low 32 bits), high = 0
    movl %edx, BOOT_INFO + BOOT_RESERVED_START_OFF
    movl $0,   BOOT_INFO + BOOT_RESERVED_START_OFF + 4

    jmp  e820_done

e820_next:
    incl %esi
    jmp  e820_loop

e820_done:
    ret

# pte flags
PT_FLAG_PRESENT   = 0x001   # present
PT_FLAG_WRITE     = 0x002   # writable
PT_FLAG_HUGEPG    = 0x080   # flag for 2MiB pages
PT_ENTRY_FLAGS_2M = PT_FLAG_PRESENT | PT_FLAG_WRITE | PT_FLAG_HUGEPG  # 0x083

# 1 GiB using 2 MiB pages -> 512 entries
IDENTITY_2M_PAGES = 512
PAGE_SIZE_2M      = 0x200000

# --------------------------------------------------------------------------------
# build_pagetables:
#   - zero PML4, PDPT, PD
#   - PML4[0]  -> PDPT | flags
#   - PDPT[0]  -> PD   | flags
#   - PD[i]    -> i * 2MiB | flags, for 0..511 (1 GiB)
#   - Returns: EAX = physical address of PML4
# --------------------------------------------------------------------------------
build_pagetables:
    pushl   %ebp
    movl    %esp, %ebp
    pushl   %edi
    pushl   %ecx
    pushl   %eax
    pushl   %edx

    # zero PML4 
    leal    pml4_table, %edi    # EDI = &pml4_table
    movl    $0, %eax
    movl    $(4096/4), %ecx     # 4096 bytes / 4 = number of dwords
    rep stosl                   # memset(pml4, 0, 4096)

    # zero PDPT
    leal    pdpt_table, %edi
    movl    $0, %eax
    movl    $(4096/4), %ecx
    rep stosl

    # zero PD
    leal    pd_table, %edi
    movl    $0, %eax
    movl    $(4096/4), %ecx
    rep stosl

    # PML4[0] -> PDPT
    leal    pdpt_table, %eax                            # physical address of PDPT (<4GiB)
    orl     $(PT_FLAG_PRESENT | PT_FLAG_WRITE), %eax    # 0x003
    # PML4 entries are 64-bit; we only touch low dword (hi dword stays 0)
    movl    %eax, pml4_table                            # pml4[0].low = PDPT | flags

    # PDPT[0] -> PD
    leal    pd_table, %eax                              # physical address of PD
    orl     $(PT_FLAG_PRESENT | PT_FLAG_WRITE), %eax
    movl    %eax, pdpt_table                            # pdpt[0].low = PD | flags

    # fill PD with 2MiB identity mappings: [0, 1GiB)
    leal    pd_table, %edi              # EDI = pointer to first PDE
    movl    $0, %eax                    # phys_base = 0
    movl    $IDENTITY_2M_PAGES, %ecx

.fill_pd_loop:
    movl    %eax, %edx                  # EDX = phys_base
    orl     $PT_ENTRY_FLAGS_2M, %edx    # set present, write, PS bits
    movl    %edx, (%edi)                # write low dword of PDE
    addl    $PAGE_SIZE_2M, %eax         # phys_base += 2MiB
    addl    $8, %edi                    # next 64-bit PDE (8 bytes)
    decl    %ecx
    jnz     .fill_pd_loop

    # Return physical address of PML4 in EAX
    leal    pml4_table, %eax

    popl    %edx
    popl    %eax
    popl    %ecx
    popl    %edi
    movl    %ebp, %esp
    popl    %ebp
    ret

msg_hello32:
    .asciz "bello from pm32"

msg_test:
    .asciz "testing testing 123"

# print a single character in AL at row=0, col=pos
vga_print_char:
    pushl   %eax
    pushl   %ebx
    pushl   %ecx
    pushl   %edx

    movl    $0xB8000, %ebx       # VGA text buffer phys/linear
    movl    vga_curr_pos, %ecx   # character index (0..2000)

    leal    (%ebx,%ecx,2), %edx  # EDX = &VGA[2*pos]
    movb    %al, (%edx)          # char
    movb    $0x07, 1(%edx)       # attribute

    incl    vga_curr_pos
    cmpl    $2000, vga_curr_pos      # 25 * 80 = 2000 
    jb      .ok
    movl    $0, vga_curr_pos         # wrap around
.ok:

    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    ret

# prints 25 * 80 space characters
vga_clear_screen:
    pushl   %eax
    pushl   %esi
    movl    $' ', %eax
    movl    $0, %esi

.cs_loop:
    call    vga_print_char
    incl    %esi
    cmpl    $2000, %esi
    jb      .cs_loop

    popl    %esi
    popl    %eax
    ret

# sets cursor to (0, 0)
vga_reset_cursor:
    movl    $0, vga_curr_pos
    ret

# print a zero-terminated string at ESI
vga_print_str:
    pushl   %eax
    pushl   %esi

.ps_loop:
    lodsb                       # AL = [ESI], ESI++
    testb   %al, %al
    jz      .ps_done
    call    vga_print_char
    jmp     .ps_loop

.ps_done:
    popl    %esi
    popl    %eax
    ret

vga_print_0x:
    pushw   %ax
    movb    $'0', %al
    call    vga_print_char
    movb    $'x', %al
    call    vga_print_char
    popw    %ax
    ret

vga_print_hex_nibble:
    pushw   %ax
    andb    $0x0F, %al
    cmpb    $9, %al
    jbe     1f
    addb    $7, %al         # 'A' - '0' - 10
1:
    addb    $'0', %al
    call    vga_print_char
    popw    %ax
    ret

vga_print_hex16:
    pushw   %ax
    pushw   %bx
    pushw   %cx

    movw    %ax, %bx        # copy value
    movb    $4, %cl

.vga_ph16_loop:
    movw    %bx, %ax
    shrw    $12, %ax        # top nibble into low 4 bits
    call    vga_print_hex_nibble
    shlw    $4, %bx         # shift next nibble up
    decb    %cl
    jnz     .vga_ph16_loop

    popw    %cx
    popw    %bx
    popw    %ax
    ret

vga_print_hex32:
    pushl   %eax

    pushl   %eax
    shrl    $16, %eax
    call    vga_print_hex16
    popl    %eax
    call    vga_print_hex16

    popl    %eax
    ret

# -- 64-bit mode --
    # defined during build process
    .extern _binary_build_64bit_bin_start
    .extern _binary_build_64bit_bin_end
    .extern _binary_build_64bit_bin_size

    .code64
lm64_entry:
    # Set data segments to 64-bit data selector (0x20)
    movw    $0x20, %ax
    movw    %ax, %ds
    movw    %ax, %es
    movw    %ax, %ss
    mov     $0x7000, %rsp        # reset stack

    # call jank 64-bit mode code
    call _binary_build_64bit_bin_start


# infinite loop for debugging
hlt_loop:
    hlt
    jmp hlt_loop

# -- DATA --
    .section .data

# -- PAGETABLES --
    .align 4096
pml4_table:
    .space 4096, 0

    .align 4096
pdpt_table:
    .space 4096, 0

    .align 4096
pd_table:
    .space 4096, 0


# -- GDT --
    .align 8
gdt:
    # 0x00: null
    .quad 0

    # 0x08: 32-bit code segment (for pm32_entry)
    .word 0xFFFF       # limit low
    .word 0x0000       # base low
    .byte 0x00         # base mid
    .byte 0x9A         # access: present, ring0, code, readable
    .byte 0xCF         # granularity: G=1, D=1 (32-bit), limit high=0xF
    .byte 0x00         # base high

    # 0x10: 32-bit data segment
    .word 0xFFFF
    .word 0x0000
    .byte 0x00
    .byte 0x92         # data, writable
    .byte 0xCF         # G=1, D=1 (32-bit), limit high=0xF
    .byte 0x00

    # 0x18: 64-bit code segment (L=1, D=0)
    .word 0x0000       # limit (ignored in long mode)
    .word 0x0000
    .byte 0x00
    .byte 0x9A         # exec/read
    .byte 0x20 | 0x80  # L=1 (0x20), G=0, limit high=0
    .byte 0x00

    # 0x20: 64-bit data segment
    .word 0x0000
    .word 0x0000
    .byte 0x00
    .byte 0x92         # data
    .byte 0x00         # G=0, D=0, limit high=0
    .byte 0x00

gdt_descriptor:
    .word (gdt_end - gdt - 1)
    .long gdt
gdt_end:

# -- VGA CURSOR --
# cursor position on VGA screen
# VGA screen is 25 rows, 80 cols
# each cell consists of 2 bytes, [char, attribute]
# address of cell (r, c) is at 0xB8000 + 2 * (row * 80 + col)
vga_curr_pos:
    .long 0

# -- BIOS BUF --
    .bss
    .align 16
bios_buf:
    .space 0x2000        
bios_buf_end:
