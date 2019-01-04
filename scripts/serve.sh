#!/usr/bin/env bash
# Run "pxt server" and kill it when build is done.  Assume current folder is stm32bluepill-makecode/pxt-maker.
# Exit when any command fails. Turn on echo
set -e -x

export PXT_DEBUG=1          # - display extensive logging info
export PXT_FORCE_LOCAL=1    # - compile C++ on the local machine, not the cloud service
export PXT_NODOCKER=1       # - don't use Docker image, and instead use host's arm-none-eabi-gcc (doesn't apply to Linux targets)
export PXT_RUNTIME_DEV=     # - always rebuild the C++ runtime, allowing for modification in the lower level runtime if any
export PXT_ASMDEBUG=1       # - embed additional information in generated binary.asm file

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
    sleep 30
done
sleep 30

# Kill "pxt serve"
pkill -f "node .*pxt"

# Push the hexcache to visualbluepill.github.io
cp built/hexcache/* ../../visualbluepill.github.io/compile/
set +e

pushd ../../visualbluepill.github.io
git add --all
git commit --message="Update hexcache"
git push
popd

set -e
echo "Done"
