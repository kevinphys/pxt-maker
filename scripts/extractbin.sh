# Script to extract the .bin ROM image from the UF2 build output

uf2_file=$1

ls -l $uf2_file

# Convert UF2 to BIN file (flash.bin) for flashing.  Assume ROM starts at address 0x8000000.
python2 scripts/uf2conv.py $uf2_file --convert --output flash.bin --base 0x8000000

# Dump the BIN file in hex format for checking.
hexdump -C flash.bin >flash.txt
