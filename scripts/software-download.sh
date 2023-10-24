#!/bin/bash
# Download Fish
wget https://download.opensuse.org/repositories/shells:/fish:/release:/3/Debian_12/amd64/fish_3.6.1-1_amd64.deb

# Download Firefox
wget "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=en-US" -O firefox.tar.bz2

# Download Vscode
wget "https://code.visualstudio.com/sha/download?build=insider&os=linux-deb-x64" -O visualstudiocode.deb;

# Download MarkText
wget "https://github.com/marktext/marktext/releases/download/v0.17.1/marktext-amd64.deb" -O marktext.deb

# Download GtK
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb

# Download Termius
wget https://www.termius.com/download/linux/Termius.deb

# Download JetBrains Toolbox
#wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-2.0.4.17212.tar.gz

# Install rclone
curl https://rclone.org/install.sh | /bin/bash

# Download JB Toolbox and Install to root (other script copies to /usr/local/bin)
curl https://raw.githubusercontent.com/nagygergo/jetbrains-toolbox-install/master/jetbrains-toolbox.sh | /bin/bash
cp -r /root/.local/bin/* /usr/local/bin