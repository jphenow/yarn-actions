#!/usr/bin/env bash

set -e

if [ "$DEBUG" = "1" ]; then
    echo "PWD:"
    pwd
    echo
    echo "LS:"
    ls
    echo
    echo "env:"
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
