# Embedded port of NVDLA KMD firmware
This is a Linux-free port of NVDLA firmware at https://github.com/nvdla/sw for bare metal applications. This is a work-in-progress, and may not do what you want it to do.

This is a software derivative of the kernel-mode driver for NVIDIA Deep Learning Accelerator (NVDLA) unaffiliated with NVIDIA. This repository pulls out the kmd/firmware directory, removes Linux-specifics and adds basic hardware agnostic bare metal support. You will need to configure your toolchain for any and all platforms.

Relevant parts of the original NVDLA SW readme are reproduced [below](#NVDLA-Open-Source-Software).

## Firmware compilation instructions (WIP)
Compiling the firmware requires you to set:
- `CC=<your compiler>`
	- e.g., `CC=/usr/bin/cc` or `<riscv-toolchain>/bin/riscv32-unknown-elf-gcc`.
- `AR=<your archiver>`
	- e.g. `AR=/usr/bin/ar` or `<riscv-toolchain>/bin/riscv32-unknown-elf-ar`.

Then `make` to compile and link libnvdla.a. This delegates to the Makefile in "kmd/firmware".

## Contributing
- If you share our use case for running the KMD only, feel free to open an issue or a
pull request.


# NVDLA Open Source Software

## NVDLA

The NVIDIA Deep Learning Accelerator (NVDLA) is a free and open architecture that promotes
a standard way to design deep learning inference accelerators. With its modular architecture,
NVDLA is scalable, highly configurable, and designed to simplify integration and portability.
Learn more about NVDLA on the project web page.

<http://nvdla.org/>

### Online Documentation

You can find the latest NVDLA SW documentation [here](http://nvdla.org/sw/contents.html).
This README file contains only basic information.

### Licensing

NVDLA SW Linux Kernel Mode Driver which is released under a GPLv2/BSD 3-Clause dual license.
Each source and header file contains its license notice at the start of the file.
