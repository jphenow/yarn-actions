#!/usr/bin/env bash

set -e

if [ "$DEBUG" = "1" ]; then
    pwd
    env
fi

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
