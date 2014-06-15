#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL Dropbox'
echo '###############################################'

#apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E
#add-apt-repository 'deb http://linux.dropbox.com/ubuntu '$(lsb_release -sc)' main'
#apt-get update
apt-get install nautilus-dropbox
#nautilus --quit 
#su $user -c 'dropbox start'
