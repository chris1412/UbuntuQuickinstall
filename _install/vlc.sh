#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL VLC'
echo '###############################################'

apt-get install vlc
#apt-get install vlc-plugin-pulse mozilla-plugin-vlc
