# this program is responsible for setting up a few things:
# - paging
# - long mode
# - identity mapping low memory
# - (some other stuff TODO figure this out)
# and then loading the kernel into memory


    .code16     # 16-bit mode
    
# This code is loaded by stage1 at 0x0000:0x8000 and jumped to with:
#   ljmp $0x0000, $0x8000
.global stage2_start
stage2_start:
    cli

    # clear data segments
    xorw    %ax, %ax
    movw    %ax, %ds
    movw    %ax, %es
    movw    %ax, %ss

    # Set up a small stack somewhere safe
    movw    $0x9000, %sp        # stack at 0x0000:0x9000

    sti

    # Print a test message using BIOS teletype (int 0x10, AH=0x0E)
    movw    $msg, %si

print_loop:
    lodsb                       # AL = [DS:SI], SI++
    testb   %al, %al
    jz      done                # zero terminator => end

    movb    $0x0E, %ah          # teletype
    movb    $0x07, %bl          # attribute (light gray on black)
    int     $0x10               # BIOS video

    jmp     print_loop

done:
halt:
    hlt
    jmp     halt                # spin forever

msg:
    .asciz "hello from stage 2\r\n"
