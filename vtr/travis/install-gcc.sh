#!/bin/bash

source /tmp/common.sh

./install-ppa.sh ubuntu-toolchain-r/test
apt-get -y install g++-$GCC_VERSION
