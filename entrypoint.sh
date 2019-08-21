#!/usr/bin/env bash

set -e

    echo "PWD:"
    pwd
    echo
    echo "LS:"
    ls -lah
    echo
    echo "env:"
    env


    ls -lah ..
    ls -lah ../home
    ls -lah ../workflow
    ls -lah ../workspace

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
