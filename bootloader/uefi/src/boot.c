#include <efi.h>
#include <efilib.h>

// - load kernel 
// - build pagetable 
//   - identity map low memory
//   - map upper half kernel
// - get memory map
// - jump to kernel

//for some reason, I can't get multi-file to work
//so for now, everything is just going to be here

#define PAGE_SIZE 4096
#define MB 0x100000

#define FRAMEBUFFER_VADDR   0xfffffffffc000000
#define BOOTINFO_VADDR      0xffffffffffe00000
#define KERNEL_CODE_VADDR   0xffffffffffe02000
#define KERNEL_STACK_VADDR  0xfffffffffffff000

VOID *alloc_pages(EFI_BOOT_SERVICES *BS, UINTN pages) {
    EFI_PHYSICAL_ADDRESS pa = 0;
    EFI_STATUS st = uefi_call_wrapper(BS->AllocatePages, 4, AllocateAnyPages, EfiLoaderData, pages, &pa);
    if (EFI_ERROR(st)) return NULL;
    uefi_call_wrapper(BS->SetMem, 3, (VOID*)(UINTN)pa, pages * PAGE_SIZE, 0);
    return (VOID*)(UINTN)pa;
}

//reads size of file specified by path into out_buf and size into out_size
//only works if ImageHandle points to a FAT32 filesystem?
EFI_STATUS read_file(EFI_HANDLE ImageHandle, CHAR16 *path, void **out_buf, UINTN *out_size) {
    EFI_STATUS st;
    EFI_LOADED_IMAGE *loaded = NULL;

    st = uefi_call_wrapper(BS->HandleProtocol, 3, ImageHandle, &LoadedImageProtocol, (void**)&loaded);
    if (EFI_ERROR(st)) return st;

    EFI_SIMPLE_FILE_SYSTEM_PROTOCOL *fs = NULL;
    st = uefi_call_wrapper(BS->HandleProtocol, 3, loaded->DeviceHandle, &gEfiSimpleFileSystemProtocolGuid, (void**)&fs);
    if (EFI_ERROR(st)) return st;

    EFI_FILE_PROTOCOL *root = NULL;
    st = uefi_call_wrapper(fs->OpenVolume, 2, fs, &root);
    if (EFI_ERROR(st)) return st;

    EFI_FILE_PROTOCOL *file = NULL;
    st = uefi_call_wrapper(root->Open, 5, root, &file, path, EFI_FILE_MODE_READ, 0);
    if (EFI_ERROR(st)) {
        uefi_call_wrapper(root->Close, 1, root);
        return st;
    }

    // Get file size
    EFI_FILE_INFO *info = NULL;
    UINTN info_sz = 0;
    st = uefi_call_wrapper(file->GetInfo, 4, file, &GenericFileInfo, &info_sz, NULL);
    if (st != EFI_BUFFER_TOO_SMALL) {
        uefi_call_wrapper(file->Close, 1, file);
        uefi_call_wrapper(root->Close, 1, root);
        return st;
    }

    st = uefi_call_wrapper(BS->AllocatePool, 3, EfiLoaderData, info_sz, (void**)&info);
    if (EFI_ERROR(st)) {
        uefi_call_wrapper(file->Close, 1, file);
        uefi_call_wrapper(root->Close, 1, root);
        return st;
    }

    st = uefi_call_wrapper(file->GetInfo, 4, file, &GenericFileInfo, &info_sz, info);
    if (EFI_ERROR(st)) {
        uefi_call_wrapper(BS->FreePool, 1, info);
        uefi_call_wrapper(file->Close, 1, file);
        uefi_call_wrapper(root->Close, 1, root);
        return st;
    }

    UINTN size = info->FileSize;
    uefi_call_wrapper(BS->FreePool, 1, info);

    VOID *buf = alloc_pages(BS, (size + PAGE_SIZE - 1) / PAGE_SIZE);

    UINTN read_sz = size;
    st = uefi_call_wrapper(file->Read, 3, file, &read_sz, buf);

    uefi_call_wrapper(file->Close, 1, file);
    uefi_call_wrapper(root->Close, 1, root);

    if (EFI_ERROR(st) || read_sz != size) {
        uefi_call_wrapper(BS->FreePool, 1, buf);
        return EFI_LOAD_ERROR;
    }

    *out_buf = buf;
    *out_size = size;
    return EFI_SUCCESS;
}

EFI_STATUS get_memory_map(
    EFI_SYSTEM_TABLE *ST,
    EFI_MEMORY_DESCRIPTOR **out_map,
    UINTN *out_map_size,
    UINTN *out_map_key,
    UINTN *out_desc_size,
    UINT32 *out_desc_version
) {
    EFI_BOOT_SERVICES *BS = ST->BootServices;
    EFI_STATUS st;

    UINTN map_size = 0;
    UINTN map_key = 0;
    UINTN desc_size = 0;
    UINT32 desc_version = 0;

    // probe for required buffer size
    st = uefi_call_wrapper(BS->GetMemoryMap, 5, &map_size, NULL, &map_key, &desc_size, &desc_version);
    if (st != EFI_BUFFER_TOO_SMALL) return st;

    // add slack, map can grow between calls
    map_size += desc_size * 32;

    EFI_MEMORY_DESCRIPTOR *map = NULL;
    st = uefi_call_wrapper(BS->AllocatePool, 3, EfiLoaderData, map_size, (void**)&map);
    if (EFI_ERROR(st)) return st;

    // fetch the actual memory map
    st = uefi_call_wrapper(BS->GetMemoryMap, 5, &map_size, map, &map_key, &desc_size, &desc_version);
    if (EFI_ERROR(st)) {
        uefi_call_wrapper(BS->FreePool, 1, map);
        return st;
    }

    *out_map = map;
    *out_map_size = map_size;
    *out_map_key = map_key;
    *out_desc_size = desc_size;
    *out_desc_version = desc_version;
    return EFI_SUCCESS;
}

CHAR16 *efi_mem_type_name(UINT32 t) {
    switch (t) {
        case EfiReservedMemoryType:      return L"Reserved";
        case EfiLoaderCode:              return L"LoaderCode";
        case EfiLoaderData:              return L"LoaderData";
        case EfiBootServicesCode:        return L"BootServicesCode";
        case EfiBootServicesData:        return L"BootServicesData";
        case EfiRuntimeServicesCode:     return L"RuntimeServicesCode";
        case EfiRuntimeServicesData:     return L"RuntimeServicesData";
        case EfiConventionalMemory:      return L"Conventional";
        case EfiUnusableMemory:          return L"Unusable";
        case EfiACPIReclaimMemory:       return L"ACPIReclaim";
        case EfiACPIMemoryNVS:           return L"ACPINVS";
        case EfiMemoryMappedIO:          return L"MMIO";
        case EfiMemoryMappedIOPortSpace: return L"MMIOPort";
        case EfiPalCode:                 return L"PalCode";
#if defined(EfiPersistentMemory)
        case EfiPersistentMemory:        return L"Persistent";
#endif
#if defined(EfiUnacceptedMemoryType)
        case EfiUnacceptedMemoryType:    return L"Unaccepted";
#endif
        default:                         return L"Unknown";
    }
}

void dump_memmap_by_type(EFI_MEMORY_DESCRIPTOR *map, UINTN map_size, UINTN desc_size) {
    UINT64 sum[64] = {0};

    for (UINTN off = 0; off < map_size; off += desc_size) {
        EFI_MEMORY_DESCRIPTOR *d = (EFI_MEMORY_DESCRIPTOR *)((UINT8*)map + off);
        UINT64 bytes = (UINT64)d->NumberOfPages * PAGE_SIZE;
        if (d->Type < 64) sum[d->Type] += bytes;
    }

    for (UINTN t = 0; t < 64; t++) {
        if (!sum[t]) continue;
        Print(L"Type %2u %-24s : %lu MiB\n", t, efi_mem_type_name((UINT32)t), sum[t] / (1024*1024));
    }
}

BOOLEAN should_identity_map(EFI_MEMORY_DESCRIPTOR *d) {
    // if (d->Type == EfiMemoryMappedIO || d->Type == EfiMemoryMappedIOPortSpace) {
    //     return FALSE;
    // }   
    return (d->Attribute & EFI_MEMORY_WB) != 0;
}


typedef UINT64 pte_t;

#define PTE_P   (1ULL<<0)
#define PTE_RW  (1ULL<<1)
#define PTE_US  (1ULL<<2)
#define PTE_PWT (1ULL<<3)
#define PTE_PCD (1ULL<<4)
#define PTE_A   (1ULL<<5)
#define PTE_D   (1ULL<<6)
#define PTE_PS  (1ULL<<7)
#define PTE_G   (1ULL<<8)
#define PTE_NX  (1ULL<<63)

static inline UINTN idx_pml4(UINT64 va) { return (va >> 39) & 0x1FF; }
static inline UINTN idx_pdpt(UINT64 va) { return (va >> 30) & 0x1FF; }
static inline UINTN idx_pd  (UINT64 va) { return (va >> 21) & 0x1FF; }
static inline UINTN idx_pt  (UINT64 va) { return (va >> 12) & 0x1FF; }

pte_t *get_or_alloc_table(EFI_BOOT_SERVICES *BS, pte_t *parent, UINTN index, UINT64 flags) {
    if (parent[index] & PTE_P) {
        UINT64 child_pa = parent[index] & 0x000FFFFFFFFFF000ULL;
        return (pte_t*)(UINTN)child_pa;
    }
    pte_t *child = (pte_t*)alloc_pages(BS, 1);
    if (!child) return NULL;
    parent[index] = ((UINT64)(UINTN)child) | flags | PTE_P;
    return child;
}

EFI_STATUS map_2m(EFI_BOOT_SERVICES *BS, pte_t *pml4, UINT64 va, UINT64 pa, UINT64 flags) {
    pte_t *pdpt = get_or_alloc_table(BS, pml4, idx_pml4(va), PTE_RW);
    if (!pdpt) return EFI_OUT_OF_RESOURCES;

    pte_t *pd   = get_or_alloc_table(BS, pdpt, idx_pdpt(va), PTE_RW);
    if (!pd) return EFI_OUT_OF_RESOURCES;

    UINTN pdi = idx_pd(va);
    // 2 MiB alignment required for PS=1 PDEs
    if ((va & 0x1FFFFFULL) || (pa & 0x1FFFFFULL)) return EFI_INVALID_PARAMETER;

    pd[pdi] = (pa & 0x000FFFFFFFFFF000ULL) | flags | PTE_PS | PTE_P;
    return EFI_SUCCESS;
}

EFI_STATUS map_4k(EFI_BOOT_SERVICES *BS, pte_t *pml4, UINT64 va, UINT64 pa, UINT64 flags) {
    // 4 KiB alignment required for 4K PTEs
    if ((va & 0xFFFULL) || (pa & 0xFFFULL)) return EFI_INVALID_PARAMETER;

    // Walk/create PML4 -> PDPT -> PD
    pte_t *pdpt = get_or_alloc_table(BS, pml4, idx_pml4(va), PTE_RW);
    if (!pdpt) return EFI_OUT_OF_RESOURCES;

    pte_t *pd   = get_or_alloc_table(BS, pdpt, idx_pdpt(va), PTE_RW);
    if (!pd) return EFI_OUT_OF_RESOURCES;

    UINTN pdi = idx_pd(va);

    // If there's already a 2MiB mapping here, we can't put a PT under it.
    if (pd[pdi] & PTE_P) {
        if (pd[pdi] & PTE_PS) {
            // Either error out, or implement "split huge page" logic (more work).
            return EFI_INVALID_PARAMETER;
        }
    }

    // Get/create PT for this PDE
    pte_t *pt = NULL;
    if (pd[pdi] & PTE_P) {
        UINT64 pt_pa = pd[pdi] & 0x000FFFFFFFFFF000ULL;
        pt = (pte_t *)(UINTN)pt_pa;
    } 
    else {
        pt = (pte_t*)alloc_pages(BS, 1);
        if (!pt) return EFI_OUT_OF_RESOURCES;

        // Table pointers shouldn't carry NX; keep it clean.
        UINT64 table_flags = PTE_RW; // add PTE_US if you want user mappings later
        pd[pdi] = ((UINT64)(UINTN)pt) | table_flags | PTE_P;
    }

    // Leaf PTE
    pt[idx_pt(va)] = (pa & 0x000FFFFFFFFFF000ULL) | flags | PTE_P;
    return EFI_SUCCESS;
}

EFI_STATUS map_range_identity_2m(EFI_BOOT_SERVICES *BS, pte_t *pml4, UINT64 start, UINT64 end, UINT64 flags) {
    // round outward to 2MiB
    UINT64 s = start & ~0x1FFFFFULL;
    UINT64 e = (end + 0x1FFFFFULL) & ~0x1FFFFFULL;
    for (UINT64 a = s; a < e; a += 0x200000ULL) {
        EFI_STATUS st = map_2m(BS, pml4, a, a, flags);
        if (EFI_ERROR(st)) return st;
    }
    return EFI_SUCCESS;
}

VOID load_cr3(UINT64 pml4_pa) {
    __asm__ volatile("mov %0, %%cr3" :: "r"(pml4_pa) : "memory");
}

EFI_STATUS get_framebuffer(
    EFI_SYSTEM_TABLE *ST,
    EFI_PHYSICAL_ADDRESS *out_base,
    UINTN *out_size,
    UINT32 *out_w,
    UINT32 *out_h,
    UINT32 *out_ppsl                    //pixels per scan line
) {
    EFI_BOOT_SERVICES *BS = ST->BootServices;

    EFI_GRAPHICS_OUTPUT_PROTOCOL *gop = NULL;
    EFI_GUID gop_guid = EFI_GRAPHICS_OUTPUT_PROTOCOL_GUID;

    EFI_STATUS st = uefi_call_wrapper(BS->LocateProtocol, 3, &gop_guid, NULL, (void**)&gop);
    if (EFI_ERROR(st)) return st;

    *out_base = gop->Mode->FrameBufferBase;
    *out_size = (UINTN)gop->Mode->FrameBufferSize;

    *out_w    = gop->Mode->Info->HorizontalResolution;
    *out_h    = gop->Mode->Info->VerticalResolution;
    *out_ppsl = gop->Mode->Info->PixelsPerScanLine;

    return EFI_SUCCESS;
}

static void dump8(VOID *p) {
    UINT8 *b = (UINT8*)p;
    Print(L"first8: %c%c%c%c%c%c%c%c\n",
          b[0],b[1],b[2],b[3],b[4],b[5],b[6],b[7]);
}

VOID *find_rsdp(EFI_SYSTEM_TABLE *ST) {
    EFI_GUID acpi20 = ACPI_20_TABLE_GUID;
    EFI_GUID acpi10 = ACPI_TABLE_GUID;

    VOID *fallback = NULL;

    for (UINTN i = 0; i < ST->NumberOfTableEntries; i++) {
        EFI_CONFIGURATION_TABLE *ct = &ST->ConfigurationTable[i];

        if (!CompareGuid(&ct->VendorGuid, &acpi20)) {
            Print(L"Found ACPI 2.0 table: 0x%lx\n", (UINT64) (UINTN) ct->VendorTable);
            dump8(ct->VendorTable);
            return ct->VendorTable;
        }
        if (!CompareGuid(&ct->VendorGuid, &acpi10)) {
            Print(L"Found ACPI 1.0 table: 0x%p\n", (UINT64) (UINTN) ct->VendorTable);
            dump8(ct->VendorTable);
            fallback = ct->VendorTable;
        }
    }

    if (fallback) {
        Print(L"Using ACPI 1.0 fallback: 0x%lx\n", (UINT64) (UINTN) fallback);
        dump8(fallback);
    }
    return fallback;
}

EFI_STATUS exit_boot_services(
    EFI_HANDLE ImageHandle, 
    EFI_SYSTEM_TABLE *ST,
    EFI_MEMORY_DESCRIPTOR **out_map,
    UINTN *out_map_size,
    UINTN *out_map_key,
    UINTN *out_desc_size,
    UINT32 *out_desc_ver
) {
    EFI_BOOT_SERVICES *BS = ST->BootServices;

    for (;;) {
        // get memory map
        EFI_MEMORY_DESCRIPTOR *map = NULL;
        UINTN map_size, map_key, desc_size;
        UINT32 desc_version;
        EFI_STATUS st = get_memory_map(ST, &map, &map_size, &map_key, &desc_size, &desc_version);
        if(EFI_ERROR(st)) return st;

        // try to exit
        st = uefi_call_wrapper(BS->ExitBootServices, 2, ImageHandle, map_key);
        if (!EFI_ERROR(st)) {
            // success : cannot use boot services after this point
            *out_map = map;
            *out_map_size = map_size;
            *out_map_key = map_key;
            *out_desc_size = desc_size;
            *out_desc_ver = desc_version;
            return EFI_SUCCESS;
        }

        // If map changed, retry
        uefi_call_wrapper(BS->FreePool, 1, map);
        if (st != EFI_INVALID_PARAMETER) return st;

        Print(L"Exit failed, retrying\r\n");
    }
}

typedef struct __attribute__((packed)) MMapEnt {
    uint64_t base;
    uint64_t size;
    uint32_t type;
} MMapEnt;

typedef struct __attribute__((packed)) BootInfo {
    char            magic[4];       // 'BOOT'

    uint64_t        fb_base;        // physical base address
    uint32_t        fb_size;        
    uint32_t        fb_width;       
    uint32_t        fb_height;
    uint32_t        fb_ppsl;

    uint64_t        rsdp_phys;      // Root System Description Table (RSDP)

    uint32_t        mmap_entries;   // mmap entry count
    MMapEnt         mmap[];
} BootInfo;

static inline void outb(uint16_t port, uint8_t val) {
    __asm__ volatile ("outb %0, %1" : : "a"(val), "Nd"(port));
}
static inline uint8_t inb(uint16_t port) {
    uint8_t v;
    __asm__ volatile ("inb %1, %0" : "=a"(v) : "Nd"(port));
    return v;
}

#define COM1 0x3F8

static void serial_init(void) {
    outb(COM1 + 1, 0x00); // disable interrupts
    outb(COM1 + 3, 0x80); // DLAB on
    outb(COM1 + 0, 0x03); // divisor low  (38400 baud if base 115200)
    outb(COM1 + 1, 0x00); // divisor high
    outb(COM1 + 3, 0x03); // 8N1
    outb(COM1 + 2, 0xC7); // enable FIFO, clear, 14-byte threshold
    outb(COM1 + 4, 0x0B); // IRQs enabled, RTS/DSR set
}

static void serial_putc(char c) {
    while ((inb(COM1 + 5) & 0x20) == 0) { } // wait for THR empty
    outb(COM1, (uint8_t)c);
}

static void serial_puts(const char *s) {
    for (; *s; s++) {
        if (*s == '\n') serial_putc('\r');
        serial_putc(*s);
    }
}

static void serial_putx_u64(uint64_t x) {
    static const char hex[] = "0123456789abcdef";
    serial_puts("0x");
    for (int i = 60; i >= 0; i -= 4) {
        serial_putc(hex[(x >> i) & 0xFULL]);
    }
}

static inline __attribute__((noreturn)) void jump_to_kernel() {
    serial_puts("jumping to kernel\n");

    uint64_t kernel_entry = KERNEL_CODE_VADDR;
    uint64_t stack_top = 0x0;

    serial_putx_u64(kernel_entry);
    serial_puts("\n");

    __asm__ volatile(
        "cli\n"
        "mov %0, %%rsp\n"
        "xor %%rbp, %%rbp\n"
        "jmp *%1\n"
        :
        : "r"(stack_top), "r"(kernel_entry)
        : "memory"
    );

    serial_puts("should not be here\n");

    __builtin_unreachable();
}

EFI_STATUS EFIAPI efi_main(EFI_HANDLE ImageHandle, EFI_SYSTEM_TABLE *SystemTable) {
    InitializeLib(ImageHandle, SystemTable);

    Print(L"Hello from GNU-EFI!\r\n");
    Print(L"Firmware vendor : %s\r\n", SystemTable->FirmwareVendor);

    // create info struct
    BootInfo *bootinfo = (BootInfo*) alloc_pages(BS, 1);
    bootinfo->magic[0] = 'B';
    bootinfo->magic[1] = 'O';
    bootinfo->magic[2] = 'O';
    bootinfo->magic[3] = 'T';

    // find RSDP
    bootinfo->rsdp_phys = (uint64_t) find_rsdp(SystemTable);
    Print(L"RSDP Addr : 0x%lx\r\n", (UINT64) bootinfo->rsdp_phys);

    // create pagetable
    pte_t *pml4 = (pte_t*) alloc_pages(BS, 1);
    Print(L"PML4: 0x%lx\r\n", (UINT64)(UINTN)pml4);

    // identity map low memory
    {
        EFI_MEMORY_DESCRIPTOR *map = NULL;
        UINTN map_size, map_key, desc_size;
        UINT32 desc_version;
        EFI_STATUS st = get_memory_map(ST, &map, &map_size, &map_key, &desc_size, &desc_version);
        if(EFI_ERROR(st)) return st;

        dump_memmap_by_type(map, map_size, desc_size);

        for (UINTN off = 0; off < map_size; off += desc_size) {
            EFI_MEMORY_DESCRIPTOR *d = (EFI_MEMORY_DESCRIPTOR *)((UINT8*)map + off);
            if (!should_identity_map(d)) continue;

            UINT64 base = d->PhysicalStart;
            UINT64 size = (UINT64)d->NumberOfPages * PAGE_SIZE;
            map_range_identity_2m(BS, pml4, base, base + size, PTE_RW);
        }
    }
    
    // map upper half kernel
    {
        // load and map kernel
        {
            void *kbuf; UINTN ksz;
            EFI_STATUS st = read_file(ImageHandle, L"\\EFI\\JANKOS\\KERNEL.BIN", &kbuf, &ksz);
            Print(L"Kernel size : %u\r\n", ksz);
            Print(L"Kernel addr : 0x%lx\r\n", (UINT64)(UINTN)kbuf);
            
            // UINTN nr_pages = (ksz + PAGE_SIZE - 1) / PAGE_SIZE;
            UINTN nr_pages = MB / PAGE_SIZE;
            for(UINTN ptr = 0; ptr < nr_pages; ptr ++) {
                map_4k(BS, pml4, KERNEL_CODE_VADDR + ptr * PAGE_SIZE, (UINTN) kbuf + ptr * PAGE_SIZE, PTE_RW);
            }
            Print(L"Done mapping kernel code\r\n");
        }

        // map stack
        {
            void* buf = alloc_pages(BS, 1);
            map_4k(BS, pml4, KERNEL_STACK_VADDR, (UINTN) buf, PTE_RW);
            Print(L"Done mapping kernel stack\r\n");
        }

        // map framebuffer
        {
            EFI_PHYSICAL_ADDRESS fb_base;
            UINTN fb_size;
            UINT32 w,h,ppsl;

            EFI_STATUS st = get_framebuffer(ST, &fb_base, &fb_size, &w, &h, &ppsl);
            Print(L"FB: base=0x%lx size=0x%lx %ux%u ppsl=%u\r\n", (UINT64)fb_base, (UINT64)fb_size, w, h, ppsl);

            bootinfo->fb_base = (uint32_t) fb_base;
            bootinfo->fb_size = (uint32_t) fb_size;
            bootinfo->fb_width = (uint32_t) w;
            bootinfo->fb_height = (uint32_t) h;
            bootinfo->fb_ppsl = (uint32_t) ppsl;

            UINTN nr_pages = (fb_size + PAGE_SIZE - 1) / PAGE_SIZE;
            for(UINTN ptr = 0; ptr < nr_pages; ptr ++) {
                map_4k(BS, pml4, FRAMEBUFFER_VADDR + ptr * PAGE_SIZE, (UINTN) fb_base + ptr * PAGE_SIZE, PTE_RW);
            }
            Print(L"Done mapping framebuffer\r\n");
        }

        // map info struct
        {
            map_4k(BS, pml4, BOOTINFO_VADDR, (UINTN) bootinfo, PTE_RW);
            Print(L"Done mapping bootinfo\r\n");
        }
    }

    // get final mmap and exit boot services
    {
        Print(L"Exiting boot services\r\n");
        EFI_MEMORY_DESCRIPTOR *map = NULL;
        UINTN map_size, map_key, desc_size;
        UINT32 desc_version;
        EFI_STATUS status = exit_boot_services(ImageHandle, SystemTable,  &map, &map_size, &map_key, &desc_size, &desc_version);
    
        serial_init();
        serial_puts("made it past ExitBootServices\n");

        // write final mmap to bootinfo
        bootinfo->mmap_entries = 0;
        UINTN ind = 0;
        for (UINTN off = 0; off < map_size; off += desc_size) {
            EFI_MEMORY_DESCRIPTOR *d = (EFI_MEMORY_DESCRIPTOR *)((UINT8*)map + off);
            if (!should_identity_map(d)) continue;
            
            bootinfo->mmap_entries ++;
            bootinfo->mmap[ind].base = (uint64_t) d->PhysicalStart;
            bootinfo->mmap[ind].size = (uint64_t) (d->NumberOfPages * PAGE_SIZE);
            bootinfo->mmap[ind].type = (uint32_t) d->Type;
            ind ++;
        }
        serial_puts("done writing mmap to bootinfo\n");
    }

    // use new pagetables
    load_cr3((UINT64) pml4);

    serial_puts("now using new pagetables\n");

    // jump to kernel
    jump_to_kernel();

    return EFI_SUCCESS;
}
