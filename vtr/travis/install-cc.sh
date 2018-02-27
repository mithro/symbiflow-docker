#!/bin/bash

source ./common.sh

COMPILER=$(echo $CC | sed -e's/-.*$//')
VERSION=$(echo $CC | sed -e's/^.*-//')

echo "Compiler: $COMPILER"
echo " Version: $VERSION"

export ${COMPILER}_VERSION=$VERSION
./install-$COMPILER.sh
