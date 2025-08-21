<h1><img src="janky.png" alt="Logo" style="height: 1em; vertical-align: middle;"> jank-os</h1>

# READ FIRST
Any questions and concerns about this code should be directed [here](mailto:sanatd2026@g.ucla.edu)

sanatd2026@g.ucla.edu if the link above does not work.

# About
**jank-os** is a learning OS built using the amazing language, [**jank**](https://github.com/Andwerpz/jank-pl). Right now, there isn't much. Check back later (hopefully there will be more stuff D:)

# Setup 

Tested on WSL2.

Make sure you have **jank** installed. To install **jank**, you can follow the instructions in the repository [here](https://github.com/Andwerpz/jank-pl). Next, you need `x86_64-elf-gcc`, you can install it from [here](https://formulae.brew.sh/formula/x86_64-elf-gcc) (you'll need `brew`). Finally, you'll need `qemu-system-x86_64`, you can get it by running `sudo apt install qemu-system`. Finally, run `./makeKernel.sh` and it should boot.
