<h1><img src="janky.png" alt="Logo" style="height: 1em; vertical-align: middle;"> jank-os</h1>

# About
**jank-os** is a learning OS built using the amazing language, [**jank**](https://github.com/Andwerpz/jank-pl). It now includes a growing kernel, a small userland, and it has been able to run on bare metal as well. It's currently under active development, check back in a few months for more features (hopefully). 

## Features
- UEFI boot path with a custom bootloader.
- Paging, GDT/IDT setup, and syscall entry/exit plumbing.
- Preemptive scheduler and process management with basic synchronization primitives.
- Linux-like syscall interface for userland programs.
- Virtual filesystem (VFS) layer with Ext2 filesystem support.
- PS/2 keyboard and basic device support.
- xHCI USB drivers and storage drivers for AHCI/SATA and USB mass storage (BOT/SCSI).
- Userland programs and simple test suite. 
- Networking drivers are in the works.

# Setup 
Tested on WSL2 and Debian.

Make sure you have **jank** installed. To install **jank**, you can follow the instructions in the repository [here](https://github.com/Andwerpz/jank-pl). Next, you need `x86_64-elf-gcc`, you can install it from [here](https://formulae.brew.sh/formula/x86_64-elf-gcc) (you'll need `brew`). The remaining dependencies can be installed by running the following:
```
sudo apt update
sudo apt install qemu-system gnu-efi
```

## Bootable Drive
To create a bootable drive image, run:
```
make drive
```
from the repository root. The drive image should be generated in `drive.img`. 