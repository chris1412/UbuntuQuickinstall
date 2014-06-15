#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL Dart Editor'
echo '###############################################'

echo "Download Dart Editor from https://www.dartlang.org/tools/download.html - darteditor-linux-x64.zip" 
while [ ! -s /home/$user/Downloads/darteditor-linux-x64.zip ]; do
    printf "" 
done

unzip /home/$user/Downloads/darteditor-linux-x64.zip -d /opt
chown -R $user:$group /opt/dart

su $user -c "mkdir -p /home/$user/.local/share/applications/"
su $user -c "meld home/$user/.local/share/applications/DartEditor.desktop /home/$user/.local/share/applications/DartEditor.desktop"

su $user -c '/opt/dart/DartEditor'
