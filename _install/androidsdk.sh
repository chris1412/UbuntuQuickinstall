#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL Android SDK'
echo '###############################################'

echo "Download Android SDK from http://developer.android.com/sdk/index.html#download - adt-bundle-linux*.zip" 
while [ ! -s /home/$user/Downloads/adt-bundle-linux*.zip ]; do
    printf "" 
done

unzip /home/$user/Downloads/adt-bundle-linux*.zip -d /opt
mv /opt/adt-bundle-linux* /opt/adt-bundle-linux
chown -R $user:$group /opt/adt-bundle-linux

apt-get update
apt-get install android-tools-adb android-tools-fastboot
