#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL Vagrant'
echo '###############################################'

DEPENDENCIES="virtualbox" # space separated
echo "Dependencies:"
for DEPENDENCY  in $DEPENDENCIES; do
    echo "------------------"
    echo "check for $PACKAGE:"
    if ! dpkg-query -W $DEPENDENCY; then 
        echo "Required package $DEPENDENCY is not installed!" 1>&2
        exit 1
    fi
    echo "------------------"
done

echo "Download Vagrant from http://www.vagrantup.com/downloads - vagrant_*_x86_64.deb" 
while [ ! -s /home/$user/Downloads/vagrant_*_x86_64.deb ]; do
    printf "" 
done

dpkg --install /home/$user/Downloads/vagrant_*_x86_64.deb

su $user -c "mkdir -p /home/$user/Vagrant"
