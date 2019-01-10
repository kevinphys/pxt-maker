#!/usr/bin/env bash
# Update the linker map and disassembly

set -x

# Extract flash.bin from the built UF2 file.
# python2 ../../scripts/uf2conv.py \
#     built/binary.uf2 \
#     --convert \
#     --output built/flash.bin \
#     --base 0x8000000

# Copy the linker map
cp libs/stm32bluepill/built/codal/build/STM32_BLUE_PILL.map \
    logs/

# Disassemble the executable
arm-none-eabi-objdump -t -S \
    libs/stm32bluepill/built/codal/build/STM32_BLUE_PILL \
    >logs/STM32_BLUE_PILL.dump

# Copy the assembly
# cp built/binary.asm \
#     ../../logs/
