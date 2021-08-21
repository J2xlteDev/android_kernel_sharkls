#!/bin/bash
cd src/

# Exports
export CROSS_COMPILE="$PWD/../toolchain/bin/arm-eabi-"
export ARCH=arm

# Cleaning
make clean && make mrproper

# Compiling
make j2xlte_defconfig
make zImage -j$(nproc --all)
cp arch/arm/boot/zImage .
