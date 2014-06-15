#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL Everpad'
echo '###############################################'

add-apt-repository ppa:nvbn-rm/ppa
apt-get update
apt-get install everpad
