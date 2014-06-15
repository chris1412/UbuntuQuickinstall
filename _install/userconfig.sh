#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'CONFIGURE bashrc'
echo '###############################################'

su $user -c "meld home/$user/.bashrc /home/$user/.bashrc"
su $user -c "meld home/$user/.bash_aliases /home/$user/.bash_aliases"
meld root/.bashrc /root/.bashrc
meld root/.bash_aliases /root/.bash_aliases

echo '###############################################'
echo 'INSTALL xbindkeys'
echo '###############################################'

apt-get install xbindkeys xbindkeys-config xautomation xdotool

su $user -c "meld home/$user/.xbindkeysrc /home/$user/.xbindkeysrc"

echo '###############################################'
echo 'CONFIGURE ssh-keys'
echo '###############################################'

cp -R home/$user/.ssh/ /home/$user/
chown -R $user:$user /home/$user/.ssh/
chmod 700 /home/$user/.ssh/
chmod 600 /home/$user/.ssh/config
chmod 600 /home/$user/.ssh/*
chmod 644 /home/$user/.ssh/*.pub

echo '###############################################'
echo 'COPY Configs'
echo '###############################################'

su $user -c "cp -r home/$user/.local/share/rhythmbox /home/$user/.local/share/rhythmbox"
