#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL Modelio'
echo '###############################################'

echo "Download Modelio from http://www.modelio.org/downloads/download-modelio.html - modelio-open-*-linux.gtk.x86_64.tar.gz" 
while [ ! -s /home/$user/Downloads/modelio-open-*-linux.gtk.x86_64.tar.gz ]; do
    printf "" 
done

tar xfvz /home/$user/Downloads/modelio-open-*-linux.gtk.x86_64.tar.gz -C /opt
mv /opt/Modelio* /opt/Modelio
chown -R $user:$group /opt/Modelio    
su $user -c '/opt/Modelio/modelio'

while true; do
    echo -n "create a desktop entry for Modelio? [YyJjNn]: "
    read desktopEntry
    case $desktopEntry in
        [YyJj]* ) 
            su $user -c "mkdir -p /home/$user/.local/share/applications/"
            su $user -c "meld home/$user/.local/share/applications/modelio.desktop /home/$user/.local/share/applications/modelio.desktop"
            break
            ;;
        [Nn]* ) 
            break
            ;;
    esac
done
