# Script to flash the UF2 build output to STM32 Blue Pill via OpenOCD.

# UF2 file to be flashed.
uf2_file=projects/blink/built/binary.uf2

ls -l $uf2_file

# Convert UF2 to BIN file (flash.bin) for flashing.  Assume ROM starts at address 0x8000000.
python2 scripts/uf2conv.py $uf2_file --convert --output flash.bin --base 0x8000000

# Dump the BIN file in hex format for checking.
hexdump -C flash.bin >flash.txt

# Flash the BIN file to the Blue Pill.  Kill OpenOCD if already running.
pkill openocd
openocd -f interface/stlink-v2.cfg -f target/stm32f1x.cfg -f scripts/flash.ocd
