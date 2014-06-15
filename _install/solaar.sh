#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL Solaar for Logitech’s Unifying Receiver'
echo '###############################################'

add-apt-repository ppa:daniel.pavel/solaar
apt-get update
apt-get install solaar
