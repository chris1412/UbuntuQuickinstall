#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL Skype'
echo '###############################################'

sudo add-apt-repository "deb http://archive.canonical.com/ubuntu $(lsb_release -sc) partner" 
apt-get update
apt-get install skype

#cp usr/bin/skype-single-instance /usr/bin/skype-single-instance
#chmod +x /usr/bin/skype-single-instance
#meld usr/share/applications/skype.desktop /usr/share/applications/skype.desktop

su chris -c 'skype'
