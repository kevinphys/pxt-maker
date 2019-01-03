#!/usr/bin/env bash
# Package and deploy pxt-maker to GitHub Pages. See https://makecode.com/cli/staticpkg

deploy() {
    # Deploy to https://lupyuen.github.io/pxt-maker
    cd ../pxt-maker; pxt staticpkg --githubpages
}
deploy
