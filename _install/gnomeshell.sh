#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi


echo "This script is deprecated!" 1>&2
exit 1

echo '###############################################'
echo 'INSTALL Gnome Shell'
echo '###############################################'
#add-apt-repository ppa:gnome3-team/gnome3
#apt-get update
#apt-get install gnome-shell ubuntu-gnome-desktop 

apt-get install ubuntu-gnome-desktop
apt-get install gnome-tweak-tool gconf-editor dconf-tools
#apt-get install gnome-nettool

apt-get install gir1.2-gtop-2.0 gir1.2-networkmanager-1.0

#echo 'set gnome-shell as default'
#/usr/lib/lightdm/lightdm-set-defaults -s gnome-shell

#echo 'disable guest-session append "allow-guest=false"'
#meld etc/lightdm/lightdm.conf /etc/lightdm/lightdm.conf

#su $user -c 'gsettings set org.gnome.desktop.interface ubuntu-overlay-scrollbars false'

#xhost +SI:localuser:lightdm
#mkdir -p /usr/share/themes/Adwaita/backgrounds/
#cp usr/share/themes/Adwaita/backgrounds/stripes.jpg /usr/share/themes/Adwaita/backgrounds/stripes.jpg
#su lightdm -s /bin/bash -c 'gsettings set com.canonical.unity-greeter background "/usr/share/themes/Adwaita/backgrounds/stripes.jpg"'
#su lightdm -s /bin/bash -c 'gsettings set com.canonical.unity-greeter background-color "#000000"'

#gsettings set org.gnome.shell.overrides workspaces-only-on-primary true

reboot
