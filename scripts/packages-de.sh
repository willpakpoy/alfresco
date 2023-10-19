#!/bin/bash

# echo "Installing Xfce4 UI components"
# apt -qq install -y supervisor xfce4 xfce4-terminal
# apt -qq purge -y pm-utils xscreensaver*

apt install lxde-core -y -qq
apt install supervisor -y -qq

echo "Downloading KasmVNC"
wget https://github.com/kasmtech/KasmVNC/releases/download/v1.2.0/kasmvncserver_bookworm_1.2.0_amd64.deb
apt install ./kasmvncserver_*.deb -qq -y

# echo "Installing xfce4 goodies"
# apt -qq install -y xfce4-goodies

echo "Install XRDP"
apt -qq install -y xrdp
echo lxsession -s LXDE -e LXDE >> /etc/xrdp/startwm.sh

echo "hi"