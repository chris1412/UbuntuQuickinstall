#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL Pidgin'
echo '###############################################'

apt-get install pidgin pidgin-otr pidgin-encryption pidgin-extprefs pidgin-libnotify pidgin-guifications pidgin-hotkeys pidgin-librvp pidgin-plugin-pack
