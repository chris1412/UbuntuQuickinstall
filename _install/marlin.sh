#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL marlin'
echo '###############################################'

add-apt-repository ppa:marlin-devs/marlin-daily
apt-get update
apt-get install marlin marlin-plugin-dropbox

while true; do
    echo -n "KeePass 2.x plugins that provide Ubuntu (Unity) integration? [YyJjNn]: "
    read plugins
    case $plugins in
        [YyJj]* ) 
            apt-add-repository ppa:dlech/keepass2-plugins
            apt-get update
            apt-get install keepass2-plugin-application-indicator keepass2-plugin-application-menu
            break
            ;;
        [Nn]* ) 
            break
            ;;
    esac
done
