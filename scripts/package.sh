#!/usr/bin/env bash
# Package and deploy pxt-maker. See https://makecode.com/cli/staticpkg

package() {
    # Package and test locally
    # cd ../pxt; npm run build
    cd ../pxt-maker; pxt staticpkg
    pxt serve -pkg
}
# package

deploy() {
    # Deploy to https://lupyuen.github.io/pxt-maker
    cd ../pxt-maker; pxt staticpkg --githubpages
}
deploy

dump_flash() {
    # Dump a UF2 file as text.
    # UF2 file to be flashed.
    uf2_file=projects/blink/built/binary.uf2

    ls -l $uf2_file

    # Convert UF2 to BIN file (flash.bin) for flashing.  Assume ROM starts at address 0x8000000.
    python2 scripts/uf2conv.py $uf2_file --convert --output /tmp/flash.bin --base 0x8000000

    # Dump the BIN file in hex format for checking.
    hexdump -C /tmp/flash.bin >/tmp/flash.txt
}
# dump_flash
