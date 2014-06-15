#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL ArgoUML'
echo '###############################################'

echo "Download ArgoUML from http://argouml.tigris.org/ - ArgoUML-*.tar.gz" 
while [ ! -s /home/$user/Downloads/ArgoUML-*.tar.gz ]; do
    printf "" 
done

tar xfvz /home/$user/Downloads/ArgoUML-*.tar.gz -C /opt
mv /opt/argouml* /opt/ArgoUML
chown -R $user:$group /opt/ArgoUML
chmod +x /opt/ArgoUML/argouml.sh
su $user -c '/opt/ArgoUML/argouml.sh'

while true; do
    echo -n "create a desktop entry for ArgoUML? [YyJjNn]: "
    read desktopEntry
    case $desktopEntry in
        [YyJj]* ) 
            su $user -c "mkdir -p /home/$user/.local/share/applications/"
            su $user -c "meld home/$user/.local/share/applications/ArgoUML.desktop /home/$user/.local/share/applications/ArgoUML.desktop"
            break
            ;;
        [Nn]* ) 
            breaks
            ;;
    esac
done
