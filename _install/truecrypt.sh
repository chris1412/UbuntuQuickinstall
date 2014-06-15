#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL truecrypt'
echo '###############################################'

echo "Download Truecrypt from http://www.truecrypt.org/downloads - truecrypt-*-linux-x64.tar.gz" 
while [ ! -s /home/$user/Downloads/truecrypt-*-linux-x64.tar.gz ]; do
    printf "" 
done

su $user -c 'tar -zxvf ~/Downloads/truecrypt-*-linux-x64.tar.gz -C ~/Downloads'
su $user -c '~/Downloads/truecrypt-*-setup-x64'

groupadd truecrypt
sudo usermod -aG truecrypt $user

echo 'add "%truecrypt ALL=NOPASSWD: /usr/bin/truecrypt" to sudoers'
meld etc/sudoers /etc/sudoers

su $user -c 'truecrypt'

meld home/$user/.TrueCrypt/Configuration.xml /home/$user/.TrueCrypt/Configuration.xml

#while true; do
#    echo -n "create a desktop entry for TeamSpeak3? [YyJjNn]: "
#    read desktopEntry
#    case $desktopEntry in
#        [YyJj]* ) 
#                su $user -c "mkdir -p /home/$user/.local/share/icons/"
#                su $user -c "cp home/$user/.local/share/icons/truecrypt.png /home/$user/.local/share/icons/truecrypt.png"
#                su $user -c "mkdir -p /home/$user/.local/share/applications/"
#                su $user -c "meld home/$user/.local/share/applications/TrueCrypt.desktop /home/$user/.local/share/applications/TrueCrypt.desktop"
#            break
#            ;;
#        [Nn]* ) 
#            break
#            ;;
#    esac
#done
