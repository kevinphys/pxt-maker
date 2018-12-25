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

Because Docker is not supported on Windows Ubuntu, we will install a dummy `docker` command to intervene manually during the build...

```bash
chmod +x scripts/docker
sudo cp scripts/docker /usr/local/bin/
pxt serve --localbuild --no-browser
```

The build will pause at the `docker` step like this:
```log
building libs/base
building libs/core
building libs/core---stm32bluepill
building libs/stm32bluepill
[run] cd built/dockercodal; docker run --rm -v /mnt/c/maker.makecode.com/pxt-maker/libs/stm32bluepill/built/dockercodal/:/src -w /src -u build pext/yotta:latest python build.py
***** Paused in dummy docker script. Press Enter to continue build...
```

Look for the folder name before `:/src`. In a new shell, manually `cd` to the folder and continue the build in that folder like this:
```bash
cd /mnt/c/maker.makecode.com/pxt-maker/libs/stm32bluepill/built/dockercodal/
export VERBOSE=1
python build.py
```

Eventually the `libs/stm32bluepill` build will succeed...
```log
Entering directory `/mnt/c/maker.makecode.com/pxt-maker/libs/stm32bluepill/built/dockercodal/build'
[ 99%] converting to hex file.
...
[100%] converting to bin file.
...
[100%] Built target STM32_BLUE_PILL_hex
[100%] Built target STM32_BLUE_PILL_bin
```

Return to the `pxt-maker` shell and press Enter.  It will continue the build.

When the build pauses in a different folder like `libs/blocksprj/built/dockercodal`, repeat the above steps.

Here are the folders that require manual building:

```
libs/stm32bluepill/built/dockercodal
libs/blocksprj/built/dockercodal
```

TODO: Fix this build error:
```
[run] cd sim; node ../node_modules/typescript/bin/tsc
dalboard.ts(183,78): error TS2345: Argument of type '{ visual: string | BoardImageDefinition; }' is not assignable to parameter of type 'BoardViewOptions'.
  Property 'boardDef' is missing in type '{ visual: string | BoardImageDefinition; }'.
visuals/boardview.ts(3,42): error TS2345: Argument of type '{ runtime: Runtime; theme: IBoardTheme; visualDef: BoardImageDefinition; disableTilt: false; wire...' is not assignable to parameter of type 'MetroBoardProps'.
  Property 'boardDef' is missing in type '{ runtime: Runtime; theme: IBoardTheme; visualDef: BoardImageDefinition; disableTilt: false; wire...'.
```

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
