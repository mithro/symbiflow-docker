#!/bin/bash

source /tmp/common.sh

./install-ppa.sh llvm-toolchain-trusty-$CLANG_VERSION
apt-get -y install clang-$CLANG_VERSION
