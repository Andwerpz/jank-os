# this program is responsible for loading the stage 2 bootloader into memory
# this has to fit within the classic MBR struct (446 bytes)

# when you start the computer, the firmware loads sector 0 into some predetermined memory address
# it then jumps %rip to that address

# control is then given over to whatever code was loaded from the hard disk
# we start out in 16-bit real mode
# in real mode, our instruction pointer is given by
#   (CS << 4) + IP

# 16-bit register names:
# %ax, %bx, %cx, %dx, %si, %di, %bp, %sp

# for now, we can assume that we have access to the BIOS api


    .code16     # 16 bit mode

.global stage1_entry
stage1_entry:
    # normalize to 0x0000:0x7C00
    ljmp $0x0000, $start

start:
    cli

    # clear data segments
    xorw    %ax, %ax
    movw    %ax, %ds
    movw    %ax, %es
    movw    %ax, %ss

    # setup stack (%ss:sp)
    movw %ax, %ss
    movw $0x7C00, %sp

    sti

    # save boot drive from DL
    movb %dl, boot_drive

    # partition table starts at 0x7C00 + 0x1BE
    # read partition 1 entry
    movw $0x7C00 + 0x1BE, %si
    movb 0(%si), %al        # status
    movb 4(%si), %ah        # type

    # status must be 0x80
    cmpb $0x80, %al
    jne error_partition

    # type must be 0xAB
    cmpb $0xAB, %ah
    jne error_partition

    # read lba_first
    movl 8(%si), %eax
    movl %eax, lba_first    # save for later

    # setup DAP
    movw $STAGE2_SECTORS, dap_sectors   # number of sectors
    movw $STAGE2_LOAD_SEG, dap_buf_seg  # buffer segment:offset -> 0000:8000
    movw $STAGE2_LOAD_OFF, dap_buf_off  
    movl lba_first, %eax                # stage 2 sector start on disk
    movl %eax, dap_lba_low

    # BIOS int 0x13 extended read
    movb $0x42, %ah         # 0x42 is extended read sectors from drive function number
    movb boot_drive, %dl    # select which drive to read from
    movw $dap, %si          # point DS:SI -> DAP, DS = 0 from earlier
    int  $0x13              # trigger BIOS interrupt vector 
    jc   error_disk         # BIOS indicates success via carry flag, 1 is error

    # set %dl to boot_drive so that stage 2 can have it
    movb boot_drive, %dl

    # jump to stage 2
    ljmp $STAGE2_LOAD_SEG, $STAGE2_LOAD_OFF

    jmp good


# where to load stage 2 and how many sectors
STAGE2_LOAD_SEG = 0x0000
STAGE2_LOAD_OFF = 0x8000
STAGE2_SECTORS = 127         # 127 * 512 = 63.5 kb
# ran into errors when reading above 128 sectors
# 128 flips the sign bit, so 127 seems relatively safe

boot_drive:
    .byte 0

lba_first:
    .long 0

# Disk Address Packet (DAP) for int 0x13 extended read
# fields get populated at runtime
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

# error messaging
error_disk_msg:
    .asciz "ERR_DISK\r\n";
error_disk:
    movw $error_disk_msg, %si
    jmp print_loop

error_partition_msg:
    .asciz "ERR_PART\r\n";
error_partition:
    movw $error_partition_msg, %si
    jmp print_loop

good_msg:
    .asciz "good\r\n"
good:
    movw $good_msg, %si
    jmp print_loop

print_loop:
    lodsb                   # AL = [DS:SI], SI ++
    testb %al, %al
    jz done

    movb    $0x0E, %ah      # teletype function
    movb    $0x07, %bl      # attribute (light gray on black)
    int     $0x10           # BIOS video

    jmp     print_loop

done:
    hlt
    jmp done                # spin forever


    # pad to 510 bytes then add MBR signature
    .org 510
    .byte 0x55
    .byte 0xAA


