#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL Nvidia'
echo '###############################################'

apt-get purge nvidia*
apt-get purge bumblebee*
apt-get update
apt-get dist-upgrade

apt-get install linux-headers-generic

apt-get install nvidia-current

rm /etc/X11/xorg.conf

echo "edit xorg.conf and append in \"Section Device\": "
echo "Option    \"NoLogo\" \"True\""
echo "Option    \"RegistryDwords\" \"EnableBrightnessControl=1\""

meld etc/X11/xorg.conf /etc/X11/xorg.conf

reboot
