ENTRY(stage2_start)

SECTIONS {
    . = 0x8000;
    .text : {
        *(.text .text.*)
    }

    .data : {
        *(.data .data.*)
    }

    .bss : {
        *(.bss .bss.*)
        *(COMMON)
    }
}
