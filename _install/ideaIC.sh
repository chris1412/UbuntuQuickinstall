#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL Idea Community Edition'
echo '###############################################'

echo "Download Idea Community Edition from http://www.jetbrains.com/idea/ - ideaIC-*.tar.gz" 
while [ ! -s /home/$user/Downloads/ideaIC-*.tar.gz ]; do
    printf "" 
done

tar xfvz /home/$user/Downloads/ideaIC-*.tar.gz -C /opt
mv /opt/idea-IC* /opt/idea-IC
#chown -R $user:$group /opt/idea-IC
chmod +x /opt/idea-IC/bin/idea.sh

su $user -c '/opt/idea-IC/bin/idea.sh'
