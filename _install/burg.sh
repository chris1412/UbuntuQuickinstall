#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL Burg Bootmanager'
echo '###############################################'
add-apt-repository ppa:n-muench/burg
apt-get update 
apt-get install burg burg-themes super-boot-manager 

burg-install "(hd0)"
update-burg

#echo 'modify GRUB_CMDLINE_LINUX_DEFAULT "quiet splash console=tty1 acpi_backlight=vendor acpi_osi=Linux" in burg'
meld etc/default/burg /etc/default/burg

update-burg
burg-emu
