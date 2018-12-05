# Rebuild stm32bluepill.
# rm -rf libs/stm32bluepill/built

# Rebuild core.
rm -rf libs/core---stm32bluepill/built

# Copy local version of codal-libopencm3
rm -rf libs/stm32bluepill/built/dockercodal/libraries/codal-libopencm3
mkdir -p libs/stm32bluepill/built/dockercodal/libraries
# ln -s \
#    $PWD/../../codal-libopencm3 \
#    $PWD/libs/stm32bluepill/built/dockercodal/libraries/
cp -r \
    ../../codal-libopencm3 \
    libs/stm32bluepill/built/dockercodal/libraries/
ls -l libs/stm32bluepill/built/dockercodal/libraries/codal-libopencm3/output.map

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
pxt serve --localbuild --noBrowser

# --sourceMaps
# mkdir -p libs/core---stm32bluepill/built/dockercodal/libraries/codal-core/inc
# mkdir -p libs/core---stm32bluepill/built/dockercodal/pxtapp
