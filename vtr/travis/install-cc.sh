#!/bin/bash

source /tmp/common.sh

COMPILER=$(echo $CC | sed -e's/-.*$//')
VERSION=$(echo $CC | sed -e's/^.*-//')

echo "Compiler: $COMPILER"
echo " Version: $VERSION"

UCOMPILER="$(echo $COMPILER | tr a-z A-Z)"

export ${UCOMPILER}_VERSION=$VERSION
./install-$COMPILER.sh
