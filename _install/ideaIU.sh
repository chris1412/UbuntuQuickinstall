#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL Idea Ultimate Edition'
echo '###############################################'

echo "Download Idea Community Edition from http://www.jetbrains.com/idea/ - ideaIU-*.tar.gz" 
while [ ! -s /home/$user/Downloads/ideaIU-*.tar.gz ]; do
    printf "" 
done

tar xfvz /home/$user/Downloads/ideaIU-*.tar.gz -C /opt
mv /opt/idea-IU* /opt/idea-IU
#chown -R $user:$group /opt/idea-IU
chmod +x /opt/idea-IU/bin/idea.sh

su $user -c '/opt/idea-IU/bin/idea.sh'
