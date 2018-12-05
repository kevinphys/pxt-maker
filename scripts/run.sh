# Rebuild stm32bluepill
# rm -rf libs/stm32bluepill/built

# Rebuild core
rm -rf libs/core---stm32bluepill/built

# Rebuild DAL
rm libs/core---stm32bluepill/dal.d.ts

pxt serve --localbuild --noBrowser
# --sourceMaps

# mkdir -p libs/core---stm32bluepill/built/dockercodal/libraries/codal-core/inc
# mkdir -p libs/core---stm32bluepill/built/dockercodal/pxtapp
