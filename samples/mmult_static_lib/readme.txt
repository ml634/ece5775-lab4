mmult_static_lib
================

This project shows how to build a static library using SDSoC for later use in
GCC. The main objective is to show how one can create a fixed boot image that
inclides an FPGA bitstream that can be used by code that gets compiles with GCC
(as opposed to SDSoC). This code will compile fast and will not change the
functions implemented in hardware.

The 'build' directory contains:
 + mmult_accel.cpp - Kernel code to be impleneted in PL 
 + mmult_accel.h - Header file for PL Kernel
 + mmult_call.c - Code that calls the Kernel. This is used by SDSoC to
                  determine the data motion network.
 + Makefile - Builds the project using SDSoC

After building the project, these files will be generated:
 + mmult_accel.elf - Executable file that uses the Kernel
 + _apfcc/swstubs/libmmult_accel.a - Static library suitable for usage in GCC
 + sd_card - Directory containing an SD card image for booting the board

The 'use' directory contains:
 + include/mmult_accel.h - Required header. To create this file, the library
     provider must be aware of the how SDSoC creates stub functions. These
     functions are used to call the accelerated code. Tipically, the
     accelerated functions are named <partition>_function_<instance>. Refer to
     the file for an example.
 + lib/libmmult_accel.a - Copy of file generated on the 'build' directory
 + mmult.cpp - Code to call the fixed Kernel
 + Makefile - Build the project using GCC
