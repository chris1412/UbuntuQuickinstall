#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL Bashtools'
echo '###############################################'
apt-get install nano tmux bash-completion htop synaptic xchm fortunes cowsay nautilus-open-terminal etherwake disper
#apt-get install gir1.2-gtop-2.0 gir1.2-networkmanager-1.0
