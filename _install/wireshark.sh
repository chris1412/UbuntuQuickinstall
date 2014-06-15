#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL Wireshark'
echo '###############################################'

apt-get install wireshark
dpkg-reconfigure wireshark-common 
adduser $user wireshark
