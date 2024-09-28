# Custom x86 Bootloader

## Overview
This project is a custom x86 bootloader, designed to run on QEMU and developed using NASM (Netwide Assembler). A bootloader is a critical piece of low-level software that initializes a system, sets up the environment for an operating system to run, and hands over control to the OS. This bootloader is minimalistic and prints a welcome message to the screen, demonstrating core concepts of system programming and BIOS interaction.

The project showcases my understanding of low-level x86 architecture and real-mode programming. It’s a great demonstration of how I can work with assembly language and hardware-level tasks.

## Technologies Used
- **NASM**: Assembler for converting x86 assembly language into machine code.
- **QEMU**: Emulator used to simulate the x86 environment.
- **Assembly Language**: Written in x86 assembly for real-mode execution.

## Key Concepts
- **Bootloader**: A bootloader is loaded by the BIOS from the boot sector of a disk. It is responsible for starting the system and loading an operating system.
- **BIOS**: The Basic Input/Output System (BIOS) loads the first 512 bytes (boot sector) into memory at a specific address (0x7C00) and starts execution from there.
- **16-bit Real Mode**: This bootloader operates in 16-bit real mode, where the CPU works with a 16-bit address space and can directly interact with hardware through BIOS interrupts.
- **BIOS Interrupts**: The bootloader uses BIOS interrupts to handle screen output, specifically to print a message.
