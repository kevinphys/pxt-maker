#!/usr/bin/env bash
# Package and deploy pxt-maker. See https://makecode.com/cli/staticpkg

package() {
    # Package and test locally
    # cd ../pxt; npm run build
    cd ../pxt-maker; pxt staticpkg
    pxt serve -pkg
}
package

deploy() {
    # Deploy to https://lupyuen.github.io/pxt-maker
    cd ../pxt-maker; pxt staticpkg --githubpages
}
# deploy
