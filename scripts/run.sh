# Rebuild stm32bluepill.
# rm -rf libs/stm32bluepill/built

# Rebuild core.
rm -rf libs/core---stm32bluepill/built

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
