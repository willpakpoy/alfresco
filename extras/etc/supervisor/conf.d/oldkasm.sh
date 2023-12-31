#!/bin/bash

# Exec KasmVNC server 

if [ "x$BASE_PORT" == "x" ]; then
    BASE_PORT=8590
    DESKTOP_NUMBER=1
else
    DESKTOP_NUMBER=$(($BASE_PORT-5900+1))
fi

if [ "x$KASMSOCK" == "xTrue" ]; then
    export SOCKET_PORT=$(( $RANDOM % 50 + 1 ))
fi

if [ "x$VNC_AUTH" == "xTrue" ]; then
     echo "[INFO] Setting new certificate for VNC"
     openssl req -x509 -nodes -days 3650 -newkey rsa:2048 -keyout /home/willd/.vnc/self.pem -out /home/willd/.vnc/self.pem -subj "/C=IT/ST=None/L=None/O=INAF/OU=OATs/CN=kasm/emailAddress=none@none.none"
     /usr/bin/vncserver :$DESKTOP_NUMBER -depth 24 -geometry 1280x1050 -websocketPort $BASE_PORT -cert /home/willd/.vnc/self.pem -sslOnly -FrameRate=24 -interface 0.0.0.0
else
     /usr/bin/vncserver :$DESKTOP_NUMBER -depth 24 -geometry 1280x1050 -websocketPort $BASE_PORT -FrameRate=24 -interface 0.0.0.0
fi

# Check it is running. If it is not, exit
while true
do

    #PSOUT=$(ps -ef | grep /usr/bin/Xvnc | grep SecurityTypes) 
    PSOUT=$(ps -ef | grep /usr/bin/Xvnc) 

    if [[ "x$PSOUT" == "x" ]] ; then
        exit 1
    fi

	# Sleep other 10 secs before re-checking
	sleep 10

done