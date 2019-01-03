#!/usr/bin/env bash
# Run the built Blue Pill image in a qemu_stm32 Blue Pill Emulator.
# To run: ./scripts/emulate.sh

../../qemu_stm32/arm-softmmu/qemu-system-arm \
    -M stm32-f103c8 \
    -semihosting \
    -kernel libs/stm32bluepill/built/dockercodal/build/STM32_BLUE_PILL.bin
