#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL ThinkPad Extras'
echo '###############################################'
#apt-get install tp-trackpoint-scroll tp-wwan-hotkey

add-apt-repository ppa:linrunner/thinkpad-extras
add-apt-repository ppa:linrunner/tlp
apt-get update

echo '======================='
echo 'thinkfan'
echo 'http://thinkwiki.de/Thinkfan'
echo '======================='

apt-get install thinkfan

echo "options thinkpad_acpi fan_control=1" | tee /etc/modprobe.d/thinkfan.conf
modprobe -rv thinkpad_acpi
modprobe -v thinkpad_acpi

echo 'insert START=yes'
meld etc/default/thinkfan /etc/default/thinkfan
meld etc/thinkfan.conf /etc/thinkfan.conf 

/etc/init.d/thinkfan start

echo '======================='
echo 'tlp & tp-smapi & hdapsd'
echo '======================='

apt-get install tp-smapi-dkms
apt-get install hdapsd

apt-get install tlp tlp-rdw tp-smapi-dkms linux-firmware-nonfree

#apt-get install tlp tlp-rdw tp-smapi-dkms

#add-apt-repository ppa:linrunner/tlp
#apt-get update
#apt-get install --no-install-recommends tlp tp-smapi-dkms smartmontools
#apt-get install gobi-loader-tp

echo 'modify GRUB_CMDLINE_LINUX_DEFAULT "quiet splash console=tty1 acpi_backlight=vendor acpi_osi=Linux" in grub'
meld etc/default/grub /etc/default/grub
update-grub
#cp home/chris/.config/autostart/synclient.desktop /home/chris/.config/autostart/synclient.desktop

tlp start
tlp setcharge 55 98 BAT0
