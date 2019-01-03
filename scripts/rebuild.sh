#!/usr/bin/env bash
# Update codal-llibopencm3 from github and rebuild.  Assume current folder is stm32bluepill-makecode/pxt-maker.

echo "pushd libs/stm32bluepill/built/dockercodal/libraries/codal-libopencm3"
pushd libs/stm32bluepill/built/dockercodal/libraries/codal-libopencm3
echo "git pull"
git pull
echo "popd"
popd

echo "pushd libs/blocksprj/built/dockercodal/libraries/codal-libopencm3"
pushd libs/blocksprj/built/dockercodal/libraries/codal-libopencm3
echo "git pull"
git pull
echo "popd"
popd

echo "pushd projects/blink/built/dockercodal/libraries/codal-libopencm3"
pushd projects/blink/built/dockercodal/libraries/codal-libopencm3
echo "git pull"
git pull
echo "popd"
popd

echo "pushd libs/stm32bluepill/built/dockercodal"
pushd libs/stm32bluepill/built/dockercodal
echo "export VERBOSE=1 ; python build.py"
export VERBOSE=1 ; python build.py
echo "popd"
popd

echo "pushd libs/blocksprj/built/dockercodal"
pushd libs/blocksprj/built/dockercodal
echo "export VERBOSE=1 ; python build.py"
export VERBOSE=1 ; python build.py
echo "popd"
popd

echo "pushd projects/blink/built/dockercodal"
pushd projects/blink/built/dockercodal
echo "export VERBOSE=1 ; python build.py"
export VERBOSE=1 ; python build.py
echo "popd"
popd

pxt serve --localbuild --no-browser
