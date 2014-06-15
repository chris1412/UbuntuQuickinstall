#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL TV-Browser'
echo '###############################################'

echo "Download 'TV-Browser' from http://www.tvbrowser.org/index.php?id=tv-browser - tvbrowser_*_all.deb" 
while [ ! -s /home/$user/Downloads/tvbrowser_*_all.deb ]; do
    printf "" 
done

dpkg --install /home/$user/Downloads/tvbrowser_*_all.deb
