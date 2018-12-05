# Rebuild stm32bluepill.
# rm -rf libs/stm32bluepill/built

# Rebuild core.
rm -rf libs/core---stm32bluepill/built

# Rebuild codal-libopencm3.
rm -rf libs/stm32bluepill/built/dockercodal/libraries/codal-libopencm3
rm -rf libs/blocksprj/built/dockercodal/libraries/codal-libopencm3
rm -rf projects/blink/built/dockercodal/libraries/codal-libopencm3

# Link local version of codal-libopencm3.
CODALCM=$PWD/../../codal-libopencm3
mkdir -p libs/stm32bluepill/built/dockercodal/libraries
mkdir -p libs/blocksprj/built/dockercodal/libraries
mkdir -p projects/blink/built/dockercodal/libraries
# ln -s $CODALCM $PWD/libs/stm32bluepill/built/dockercodal/libraries/
# ln -s $CODALCM $PWD/libs/blocksprj/built/dockercodal/libraries/
# ln -s $CODALCM $PWD/projects/blink/built/dockercodal/libraries/
ls -l libs/stm32bluepill/built/dockercodal/libraries/codal-libopencm3/output.map
ls -l libs/blocksprj/built/dockercodal/libraries/codal-libopencm3/output.map
ls -l projects/blink/built/dockercodal/libraries/codal-libopencm3/output.map

# cp -r \
#    $CODALCM \
#    libs/stm32bluepill/built/dockercodal/libraries/

# Rebuild DAL.
rm libs/core---stm32bluepill/dal.d.ts
mkdir -p libs/core---stm32bluepill/built/dockercodal
ln -s \
    $PWD/libs/stm32bluepill/built/dockercodal/* \
    $PWD/libs/core---stm32bluepill/built/dockercodal/
cat libs/core---stm32bluepill/platform.h \
    libs/stm32bluepill/built/dockercodal/libraries/codal-libopencm3/stm32/cm/CmPinName.h \
    > libs/core---stm32bluepill/built/dockercodal/pxtapp/platform.h

# Build locally and serve.
pxt serve --localbuild 
# --noBrowser

# --sourceMaps
# mkdir -p libs/core---stm32bluepill/built/dockercodal/libraries/codal-core/inc
# mkdir -p libs/core---stm32bluepill/built/dockercodal/pxtapp
