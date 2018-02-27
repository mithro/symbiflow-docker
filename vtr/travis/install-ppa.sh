#!/bin/bash

source ./common.sh

apt-get -y update
apt-get install -y python-software-properties
apt-get install -y software-properties-common
apt-get install -y --reinstall ca-certificates
add-apt-repository -y ppa:$1
apt-get -y update
