#!/bin/bash

# Install the Fish shell
wget https://download.opensuse.org/repositories/shells:/fish:/release:/3/Debian_12/amd64/fish_3.6.1-1_amd64.deb
apt install ./fish*.deb -y -qq

# Install Firefox Developer Edition
mkdir -p /opt/ffde
wget "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=en-US" -O firefox.tar.bz2
tar -xvf firefox.tar.bz2 -C /opt/ffde
ln -s /opt/ffde/firefox/firefox /usr/bin

# Install Visual Studio Code
wget "https://code.visualstudio.com/sha/download?build=insider&os=linux-deb-x64" -O visualstudiocode.deb;
apt install ./visualstudiocode.deb -y -qq

# Install MarkText
wget "https://github.com/marktext/marktext/releases/download/v0.17.1/marktext-amd64.deb" -O marktext.deb
apt install ./marktext.deb -y -qq

# Install GitKraken
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
apt install ./gitkraken-amd64.deb -y -qq

# Install Termius
wget https://www.termius.com/download/linux/Termius.deb
apt install ./Termius.deb -y -qq

sudo apt-get install -f -y -qq