#!/bin/bash

set -e
set -x

export CC=clang
export CXX=clang++
#export BUILD_TYPE=debug
export CMAKE_PARAMS="-DCMAKE_INSTALL_PREFIX=/opt/vtr"

cd /workspace/vtr-verilog-to-routing
make -j8
