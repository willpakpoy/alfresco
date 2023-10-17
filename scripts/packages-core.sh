#!/bin/bash

set -euxo pipefail

echo "Updating packages"
apt-get -qq autoremove -y
apt-get -qq update -y


echo "Installing core packages"
apt -qq install -y net-tools nano wget git-all