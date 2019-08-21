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

    cd $RUNNER_WORKSPACE
    echo "LS:"
    ls -lah

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
