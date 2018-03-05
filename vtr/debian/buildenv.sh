#!/bin/bash

set -e
set -x

#export CC=gcc
#export CXX=g++
#export BUILD_TYPE=debug
export CMAKE_PARAMS="-DCMAKE_INSTALL_PREFIX=/opt/vtr"

cd /workspace/vtr-verilog-to-routing
make -j8

make install
mkdir /opt/vtr/lib
mv /opt/vtr/bin/*.a /opt/vtr/lib/
