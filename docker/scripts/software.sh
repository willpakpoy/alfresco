#!/bin/bash

# Install the Fish shell
apt install ./fish*.deb -y -qq

# Install Firefox Developer Edition
mkdir -p /opt/ffde
tar -xvf firefox.tar.bz2 -C /opt/ffde
ln -s /opt/ffde/firefox/firefox /usr/bin

# Install Visual Studio Code
apt install ./visualstudiocode.deb -y -qq

# Install MarkText
apt install ./marktext.deb -y -qq

# Install GitKraken
apt install ./gitkraken-amd64.deb -y -qq

# Install Termius
apt install ./Termius.deb -y -qq

# Install JB Toolbox
#apt -y -qq install libfuse2
#mkdir -p /opt/toolbox
#tar -zxvf jetbrains* -C /opt/toolbox

# Install JbToolbox to /usr/local/bin
cp /root/.local/bin/jetbrains-toolbox /usr/local/bin

sudo apt-get install -f -y -qq