#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL Virtualbox'
echo '###############################################'

apt-get install virtualbox virtualbox-qt virtualbox-dkms virtualbox-guest-dkms 

