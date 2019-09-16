#!/usr/bin/env bash

set -e

case "$1" in
"" | "help")
    yarn help
    ;;
* )
    directory=$1
    shift
    cd $directory
    yarn $@
esac
