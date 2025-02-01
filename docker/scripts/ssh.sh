#!/bin/bash

# Install OpenSSH Server

apt -qq install -y openssh-server
mkdir /var/run/sshd