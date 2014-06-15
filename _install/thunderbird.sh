#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL Thunderbird'
echo '###############################################'

apt-get install thunderbird thunderbird-locale-de language-pack-de-base enigmail

echo '==========='
echo 'ADDON LIST'
echo '==========='

echo 'Adblock Plus
Display Quota
Enigmail
gContactSync
ImportExportTools
Lightning
Provider for Google Calendar'

echo '==========='
echo 'Enigmail'
echo '==========='
echo 'http://wiki.ubuntuusers.de/Thunderbird/Enigmail'

su $user -c 'thunderbird'

meld home/$user/.thunderbird/profiles.ini /home/$user/.thunderbird/profiles.ini
