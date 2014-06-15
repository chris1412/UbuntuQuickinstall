#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL Sublime Text 3'
echo '###############################################'

add-apt-repository ppa:webupd8team/sublime-text-3
apt-get update
apt-get install sublime-text-installer

su $user -c "mkdir -p /home/$user/.config/sublime-text-3/Packages/User"
su $user -c "meld home/$user/.config/sublime-text-3/Packages/User/Preferences.sublime-settings /home/$user/.config/sublime-text-3/Packages/User/Preferences.sublime-settings"
su $user -c "meld home/$user/.config/sublime-text-3/Packages/User/Default\ \(Linux\).sublime-keymap /home/$user/.config/sublime-text-3/Packages/User/Default\ \(Linux\).sublime-keymap"
