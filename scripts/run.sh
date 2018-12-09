# Script to build and run pxt-maker for STM32 Blue Pill:
# cd maker.makecode.com/pxt-maker
# ./scripts/run.sh

# Location of local built version of codal-libopencm3.  If we don't link or copy this built version,
# the build script will check out THREE copies of codal-libopencm3 from GitHub and build all three copies.
CODALCM=$PWD/../../codal-libopencm3

rebuild_stm32bluepill() {
    # Rebuild stm32bluepill.
    rm -rf libs/stm32bluepill/built
}
# rebuild_stm32bluepill

rebuild_core() {
    # Rebuild core.
    rm -rf libs/core---stm32bluepill/built
}
# rebuild_core

rebuild_codal_libopencm3() {
    # Rebuild codal-libopencm3.
    rm -rf libs/stm32bluepill/built/dockercodal/libraries/codal-libopencm3
    rm -rf libs/blocksprj/built/dockercodal/libraries/codal-libopencm3
    rm -rf projects/blink/built/dockercodal/libraries/codal-libopencm3
}
# rebuild_codal_libopencm3

mkdir -p libs/stm32bluepill/built/dockercodal/libraries
mkdir -p libs/blocksprj/built/dockercodal/libraries
mkdir -p projects/blink/built/dockercodal/libraries

link_codal_libopencm3() {
    # Link local built version of codal-libopencm3, to speed up the build.  But this fails if any source files have been modified.
    ln -s $CODALCM $PWD/libs/stm32bluepill/built/dockercodal/libraries/
    ln -s $CODALCM $PWD/libs/blocksprj/built/dockercodal/libraries/
    ln -s $CODALCM $PWD/projects/blink/built/dockercodal/libraries/
}
# link_codal_libopencm3

copy_codal_libopencm3() {
    # Copy local built version of codal-libopencm3, to speed up the build.  Slower than link_codal_libopencm3() but it always works.
    cp -r $CODALCM libs/stm32bluepill/built/dockercodal/libraries/
    cp -r $CODALCM libs/blocksprj/built/dockercodal/libraries/
    cp -r $CODALCM projects/blink/built/dockercodal/libraries/
}
# copy_codal_libopencm3

# Check that the codal-libopencm3 files were linked or copied correctly.
ls -l libs/stm32bluepill/built/dockercodal/libraries/codal-libopencm3/output.map
ls -l libs/blocksprj/built/dockercodal/libraries/codal-libopencm3/output.map
ls -l projects/blink/built/dockercodal/libraries/codal-libopencm3/output.map

rebuild_dal() {
    # Rebuild DAL.  Must be done if CmPinName changes.  Somehow the source files needed for rebuild are missing, we are copying the files here.
    rm libs/core---stm32bluepill/dal.d.ts
    mkdir -p libs/core---stm32bluepill/built/dockercodal
    ln -s \
        $PWD/libs/stm32bluepill/built/dockercodal/* \
        $PWD/libs/core---stm32bluepill/built/dockercodal/
    cat libs/core---stm32bluepill/platform.h \
        $CODALCM/stm32/cm/CmPinName.h \
        > libs/core---stm32bluepill/built/dockercodal/pxtapp/platform.h
}
rebuild_dal

# Build locally and serve.  Must build locally since we are using our own codal-libopencm3 layer instead of codal-mbed.
# Without "localbuild" option, the build will fail because it will fetch the codal-libopencm3 layer from the pxt-maker web service.
pxt serve --localbuild 
# --noBrowser
