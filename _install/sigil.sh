#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL sigil'
echo '###############################################'

add-apt-repository ppa:sunab/ppa
apt-get update 
apt-get install sigil 
