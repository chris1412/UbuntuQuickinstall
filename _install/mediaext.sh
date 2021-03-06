#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL Ubuntu Restricted Extras'
echo '###############################################'

apt-get install ubuntu-restricted-extras

echo '###############################################'
echo 'INSTALL Vorbis'
echo '###############################################'

apt-get install vorbis-tools vorbisgain
