# MakeCode Maker for STM32 Blue Pill

[![Build Status](https://travis-ci.org/Microsoft/pxt-maker.svg?branch=master)](https://travis-ci.org/Microsoft/pxt-maker)
[![Community Discord](https://img.shields.io/discord/448979533891371018.svg)](https://aka.ms/makecodecommunity)

This is an experimental code editor for STM32 Blue Pill - try it at https://lupyuen.github.io/pxt-maker

* See https://medium.com/@ly.lee/work-in-progress-stm32-blue-pill-visual-programming-with-makecode-codal-and-libopencm3-422d308f252e
* [Read the docs](https://maker.makecode.com/about)

## Who is this for?

This editor is meant for micro-controllers that are friendly to breadboarding. The editor is based on [Microsoft MakeCode](https://makecode.com).

## Local Dev Server

The local server lets you to run the editor and serve the documentation from your own computer.

### Setup

1. Make sure you installed the GNU Toolchain for Windows / Mac / Linux: https://developer.arm.com/open-source/gnu-toolchain/gnu-rm/downloads

1. On Windows, use the Windows Ubuntu bash shell: https://docs.microsoft.com/en-us/windows/wsl/about

1. Install [Node.js](https://nodejs.org/) 8.9.4 or higher.

1. Install [Docker](https://www.docker.com/). For Ubuntu (but not Windows Ubuntu), run `sudo apt install docker.io`

1. Install [ninja](https://ninja-build.org/). For Ubuntu and Windows Ubuntu, run `sudo apt install ninja-build`

1. Clone the pxt repository.

       mkdir maker.makecode.com
       cd maker.makecode.com
       git clone https://github.com/microsoft/pxt
       cd pxt

1. Install the dependencies of ``Microsoft/pxt`` and build it

       npm install
       npm run build
       cd ..

1. Clone the ``Microsoft/pxt-common-packages`` repository

       git clone https://github.com/microsoft/pxt-common-packages
       cd pxt-common-packages
       npm install
       cd ..

1. Clone the ``lupyuen/pxt-maker`` repository

       git clone https://github.com/lupyuen/pxt-maker
       cd pxt-maker

1. Install the PXT command line

       npm install -g pxt

1. Install the pxt-maker dependencies.

       npm install

1. Link pxt-maker back to base pxt repo

       npm link ../pxt
       npm link ../pxt-common-packages
       
Note the above command assumes the folder structure of   

```
       maker.makecode.com
          |
  ----------------------------------
  |       |                        |
 pxt      pxt-common-packages  pxt-maker
```

### Running

Run this command from inside pxt-maker to open a local web server
```
pxt serve --localbuild 
```
If the local server opens in the wrong browser, make sure to copy the URL containing the local token. 
Otherwise, the editor will not be able to load the projects.

While fixing the build you may suppress the browser like this:
```
pxt serve --localbuild --no-browser
```

### Running on Windows Ubuntu Bash

Because Docker is not supported on Windows Ubuntu, the build will fail with an error like this:
```log
building libs/base
building libs/core
building libs/core---stm32bluepill
building libs/stm32bluepill
[run] cd built/dockercodal; docker run --rm -v /mnt/c/maker.makecode.com/pxt-maker/libs/stm32bluepill/built/dockercodal/:/src -w /src -u build pext/yotta:latest python build.py
INTERNAL ERROR: Error: spawn docker ENOENT
    at Process.ChildProcess._handle.onexit (internal/child_process.js:190:19)
    at onErrorNT (internal/child_process.js:362:16)
    at _combinedTickCallback (internal/process/next_tick.js:139:11)
    at process._tickCallback (internal/process/next_tick.js:181:9)
```

Look for the folder name before `:/src`. Manually continue the build for the folder like this:
```bash
cd /mnt/c/maker.makecode.com/pxt-maker/libs/stm32bluepill/built/dockercodal/
export VERBOSE=1
python build.py
```

Eventually the `libs/stm32bluepill` build will succeed...
```log
make[2]: Entering directory `/mnt/c/maker.makecode.com/pxt-maker/libs/stm32bluepill/built/dockercodal/build'
[ 99%] converting to hex file.
/usr/bin/arm-none-eabi-objcopy -O ihex /mnt/c/maker.makecode.com/pxt-maker/libs/stm32bluepill/built/dockercodal/build/STM32_BLUE_PILL /mnt/c/maker.makecode.com/pxt-maker/libs/stm32bluepill/built/dockercodal/build/STM32_BLUE_PILL.hex
[100%] converting to bin file.
/usr/bin/arm-none-eabi-objcopy -O binary /mnt/c/maker.makecode.com/pxt-maker/libs/stm32bluepill/built/dockercodal/build/STM32_BLUE_PILL /mnt/c/maker.makecode.com/pxt-maker/libs/stm32bluepill/built/dockercodal/build/STM32_BLUE_PILL.bin
make[2]: Leaving directory `/mnt/c/maker.makecode.com/pxt-maker/libs/stm32bluepill/built/dockercodal/build'
make[2]: Leaving directory `/mnt/c/maker.makecode.com/pxt-maker/libs/stm32bluepill/built/dockercodal/build'
[100%] Built target STM32_BLUE_PILL_hex
[100%] Built target STM32_BLUE_PILL_bin
make[1]: Leaving directory `/mnt/c/maker.makecode.com/pxt-maker/libs/stm32bluepill/built/dockercodal/build'
/usr/bin/cmake -E cmake_progress_start /mnt/c/maker.makecode.com/pxt-maker/libs/stm32bluepill/built/dockercodal/build/CMakeFiles 0
```

TODO: How to resume build

Return to `pxt-maker` and re-run `pxt serve --localbuild --no-browser`

### Updates

Make sure to pull changes from all repos regularly. More instructions are at https://github.com/Microsoft/pxt#running-a-target-from-localhost

## Repos 

This pxt target for STM32 Blue Pill depends on several other repos. The main ones are:
- https://github.com/lupyuen/codal-libopencm3, CODAL framework ported to libopencm3 for STM32 Blue Pill
- https://github.com/Microsoft/pxt, the PXT framework
- https://github.com/Microsoft/pxt-common-packages, common APIs accross various MakeCode editors
- https://github.com/lancaster-university/codal-core, CODAL core project

## Code of Conduct

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/). For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

# Contributing

This project welcomes contributions and suggestions.  Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit https://cla.microsoft.com.

When you submit a pull request, a CLA-bot will automatically determine whether you need to provide
a CLA and decorate the PR appropriately (e.g., label, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.
