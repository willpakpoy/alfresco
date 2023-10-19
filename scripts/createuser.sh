#!/bin/bash

addgroup --gid 2999 willd
useradd -m -u 2999 -s /bin/fish -g willd willd
echo -e "$PASSWORD\n$PASSWORD" | passwd willd
# adduser --disabled-password --gecosus "" willd

mkdir /home/willd/.ssh
chmod 700 /home/willd/.ssh
touch /home/willd/.ssh/authorized_keys
touch /home/willd/.ssh/config
chmod 600 /home/willd/.ssh/config
curl https://github.com/willpakpoy.keys >> /home/willd/.ssh/authorized_keys
chown -R willd /home/willd/.ssh

echo "willd ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
cat /etc/sudoers
chmod 1777 /tmp