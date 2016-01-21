Napier Dev Soc Floppy Disk Challenge 2016
=========================================

Hi, and welcome to the NDS FDC '16.

Your task is to develop the most stunning application you can in only 1.44MB of bootable magnetic media.

This repo has some files and software to aid you if you want to focus on the end product and not the supporting kit around it (eg, bootloader).

This Repo
---------

This repo contains the following tools:
* Bootloader - a minimal bootloader that you can use to launch your program
* C Support Library - a small support library to help with common tasks in an OS-less environment
* Testing and build tools: Makefiles that orchestrate building the above tools, as well as launch them in a test environment

Using
-----

The best way to use this repo is to simply develop a C program in the `user` subdirectory that links against the resources in `supportlib`.

When you've done so, run `make test` on a computer that has QEMU installed, and QEMU should attempt to boot and run the generated floppy disk image. To exit QEMU, press ESC+2 to jump to the QEMU monitor and type `q` for quit.
