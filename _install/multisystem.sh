#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL multisystem'
echo '###############################################'

add-apt-repository 'deb http://liveusb.info/multisystem/depot all main'
wget -q http://liveusb.info/multisystem/depot/multisystem.asc -O- | apt-key add - 

apt-get update
apt-get install multisystem 
