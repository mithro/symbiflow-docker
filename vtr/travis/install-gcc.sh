#!/bin/bash

source ./common.sh

./install-ppa.sh ubuntu-toolchain-r/test
apt-get -y install g++-$(GCC_VERSION)
