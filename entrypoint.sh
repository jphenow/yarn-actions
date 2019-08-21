#!/usr/bin/env bash

set -e

    echo "PWD:"
    pwd
    echo
    echo "LS:"
    ls
    echo
    echo "env:"
    env

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
