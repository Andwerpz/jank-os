ENTRY(_start)

KERNEL_VMA = 0xffffffff80000000;

SECTIONS
{
    . = KERNEL_VMA;

    .text : AT(0x100000)  /* Load at physical 1MB */
    {
        _code = .;
        *(.text)
        *(.rodata*)
        . = ALIGN(4096);
    }

    /* Use LOADADDR() to get the physical load address of the previous section */
    .data : AT(LOADADDR(.text) + SIZEOF(.text))
    {
        _data = .;
        *(.data)
        . = ALIGN(4096);
    }

    /* .bss is uninitialized, it has a VMA but no LMA. Remove AT(). */
    .bss :
    {
        _bss = .;
        *(.bss)
        *(COMMON)
        . = ALIGN(4096);
    }

    _end = .;
}