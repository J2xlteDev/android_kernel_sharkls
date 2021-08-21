#!/bin/bash

cd src/

export CROSS_COMPILE="../toolchain/bin/arm-eabi-"
export ARCH=arm

make clean && make mrproper
