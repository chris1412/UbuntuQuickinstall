#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL Zotero'
echo '###############################################'

echo "Download Zotero from http://www.zotero.org/ - Zotero-*.tar.bz2" 
while [ ! -s /home/$user/Downloads/Zotero-*.tar.bz2 ]; do
    printf "" 
done

tar xfvj /home/$user/Downloads/Zotero-*.tar.bz2 -C /opt
mv /opt/Zotero* /opt/Zotero
chown -R $user:$user /opt/Zotero
chmod +x /opt/Zotero/zotero
cp usr/share/pixmaps/zotero.svg /usr/share/pixmaps/

apt-get install libreoffice-java-common

su $user -c '/opt/Zotero/zotero'

while true; do
    echo -n "create a desktop entry for Zotero? [YyJjNn]: "
    read desktopEntry
    case $desktopEntry in
        [YyJj]* ) 
            su $user -c "mkdir -p /home/$user/.local/share/applications/"
            su $user -c "meld home/$user/.local/share/applications/Zotero.desktop /home/$user/.local/share/applications/Zotero.desktop"
            break
            ;;
        [Nn]* ) 
            break
            ;;
    esac
done
