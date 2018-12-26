#!/usr/bin/env bash
# Build the sample blink project

rm -rf build pxt_modules
pxt install
pxt build --localbuild

# Extract flash.bin from the built UF2 file.
python2 ../../scripts/uf2conv.py built/binary.uf2 \
    --convert \
    --output built/flash.bin \
    --base 0x8000000
