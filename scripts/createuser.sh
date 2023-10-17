#!/bin/bash

addgroup --gid 2999 will
useradd -m -u 2999 -s /bin/fish -g will will
echo "will:gg" | /usr/sbin/chpasswd -e