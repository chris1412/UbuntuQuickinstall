#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL nemo'
echo '###############################################'

add-apt-repository ppa:noobslab/mint
apt-get update
apt-get install nemo nemo-compare nemo-dropbox nemo-fileroller nemo-pastebin nemo-seahorse nemo-share
