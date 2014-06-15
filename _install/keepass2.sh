#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL Keepass2'
echo '###############################################'

#apt-add-repository ppa:jtaylor/keepass
#apt-get update
apt-get install keepass2 xdotool

su $user -c 'keepass2'
