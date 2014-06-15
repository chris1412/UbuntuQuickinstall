#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL teamspeak3 Client'
echo '###############################################'

echo "Download 'teamspeak3 Client' from http://www.teamspeak.com/?page=downloads - TeamSpeak3-Client-linux_*.run" 
while [ ! -s /home/$user/Downloads/TeamSpeak3-Client-linux_*.run ]; do
    printf "" 
done

cd /opt
chmod +x /home/$user/Downloads/TeamSpeak3-Client-linux_*.run
/home/$user/Downloads/TeamSpeak3-Client-linux_*.run
mv /opt/TeamSpeak3-Client-linux_* /opt/TeamSpeak3-Client
chown -R $user:$user /opt/TeamSpeak3-Client

su $user -c '/opt/TeamSpeak3-Client/ts3client_runscript.sh'

cd $BaseDir

while true; do
    echo -n "create a desktop entry for TeamSpeak3? [YyJjNn]: "
    read desktopEntry
    case $desktopEntry in
        [YyJj]* ) 
            su $user -c "mkdir -p /home/$user/.local/share/icons/"
            su $user -c "cp home/$user/.local/share/icons/TeamSpeak3-Client.png /home/$user/.local/share/icons/TeamSpeak3-Client.png"
            su $user -c "mkdir -p /home/$user/.local/share/applications/"
            su $user -c "meld home/$user/.local/share/applications/TeamSpeak3-Client.desktop /home/$user/.local/share/applications/TeamSpeak3-Client.desktop"
            break
            ;;
        [Nn]* ) 
            break
            ;;
    esac
done
