#!/usr/bin/env bash
# Update codal-llibopencm3 from github and rebuild.  Assume current folder is stm32bluepill-makecode/pxt-maker.
# Exit when any command fails. Turn on echo
set -e -x

export PXT_DEBUG=1          # - display extensive logging info
export PXT_FORCE_LOCAL=1    # - compile C++ on the local machine, not the cloud service
export PXT_NODOCKER=1       # - don't use Docker image, and instead use host's arm-none-eabi-gcc (doesn't apply to Linux targets)
export PXT_RUNTIME_DEV=     # - always rebuild the C++ runtime, allowing for modification in the lower level runtime if any
export PXT_ASMDEBUG=1       # - embed additional information in generated binary.asm file

patch_ninja() {
    cp libraries/newlib/build-arm-none-eabi/build.ninja libraries/newlib/build-arm-none-eabi/build.ninja.old
    sed 's/pool console/pool NOTUSED_console/g' libraries/newlib/build-arm-none-eabi/build.ninja.old >libraries/newlib/build-arm-none-eabi/build.ninja

    cp libraries/codal-libopencm3/lib/newlib/build-arm-none-eabi/build.ninja libraries/codal-libopencm3/lib/newlib/build-arm-none-eabi/build.ninja.old
    sed 's/pool console/pool NOTUSED_console/g' libraries/codal-libopencm3/lib/newlib/build-arm-none-eabi/build.ninja.old >libraries/codal-libopencm3/lib/newlib/build-arm-none-eabi/build.ninja
}

pushd libs/stm32bluepill/built/dockercodal/libraries/codal-libopencm3
git pull
popd

pushd libs/blocksprj/built/dockercodal/libraries/codal-libopencm3
git pull
popd

pushd projects/blink/built/dockercodal/libraries/codal-libopencm3
git pull
popd

pushd libs/stm32bluepill/built/dockercodal
rm -rf build
patch_ninja
# export VERBOSE= ; python build.py
popd

pushd libs/blocksprj/built/dockercodal
rm -rf build
patch_ninja
# export VERBOSE= ; python build.py
popd

pushd projects/blink/built/dockercodal
rm -rf build
patch_ninja
# export VERBOSE= ; python build.py
popd

# Remove hexcache.
if [ -f built/hexcache/* ]
then
    rm built/hexcache/*
fi

# Run "pxt serve" in the background since it never stops.
pxt serve --localbuild --no-browser &

# Wait for hexcache to be built by "pxt serve".
for (( ; ; ))
do
    if [ -f built/hexcache/* ]
    then
        break
    fi
    sleep 10
done
sleep 10

# Kill "pxt serve"
pkill -f "node .*pxt"

pushd libs/stm32bluepill/built/dockercodal
# rm -rf build
# patch_ninja
export VERBOSE= ; python build.py
popd

pushd libs/blocksprj/built/dockercodal
# rm -rf build
# patch_ninja
export VERBOSE= ; python build.py
popd

pushd projects/blink/built/dockercodal
# rm -rf build
# patch_ninja
export VERBOSE= ; python build.py
popd

build_demo() {
    pushd projects/blink
    ./build.sh
    popd
}

build_demo

pxt staticpkg

pxt serve -pkg

echo "Done"
