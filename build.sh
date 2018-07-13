#!/bin/bash

home=/tmp/hindsight
prefix=$home/hindsight
lsb_home=$home/luasandbox

if [ -d release ]; then
    rm -rf release
fi

mkdir release
pushd release

export luasandbox_DIR=$lsb_home
cmake -DCMAKE_BUILD_TYPE=release .. -DCMAKE_INSTALL_PREFIX=$prefix
make install
