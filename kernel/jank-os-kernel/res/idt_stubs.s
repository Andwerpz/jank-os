.section .text
.code64
.extern interrupt_handler_entry

# we need to make sure these things are pushed onto stack before jumping to context handler
# SS           : from user mode only
# %rsp         : from user mode only
# RFLAGS
# CS
# %rip
# error code   : if interrupt doesn't push this itself, this should be 0
# interrupt id 

# macro to generate one interrupt stub
.macro ISR vec
interrupt_stub_\vec:
    # handle exceptions that push an error code
    .if (\vec == 8) || (\vec == 10) || (\vec == 11) || (\vec == 12) || (\vec == 13) || (\vec == 14) || (\vec == 17) || (\vec == 21) || (\vec == 29) || (\vec == 30)
        pushq $\vec
    .else
        pushq $0
        pushq $\vec
    .endif
    jmp interrupt_handler_entry
.endm

# macro to generate a stub table entry
.macro STUB_TABLE_ENTRY vec
    .quad interrupt_stub_\vec
.endm

# generate interrupt stubs
.altmacro
.set i, 0
.rept 256
    ISR %i
    .set i, i + 1
.endr

# generate address tables
.section .rodata
.p2align 3
.global interrupt_stub_table
.type interrupt_stub_table, @object

interrupt_stub_table:
.set i, 0
.rept 256
    STUB_TABLE_ENTRY %i
    .set i, i + 1
.endr
.size interrupt_stub_table, . - interrupt_stub_table

.section .note.GNU-stack,"",@progbits