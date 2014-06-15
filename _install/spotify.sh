#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL spotify'
echo '###############################################'

add-apt-repository 'deb http://repository.spotify.com stable non-free'
apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 94558F59  
apt-get update
apt-get install spotify-client
