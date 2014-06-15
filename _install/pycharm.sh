#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL PyCharm'
echo '###############################################'

echo "Download pyCharm from http://www.jetbrains.com/pycharm - pycharm-*.tar.gz" 
while [ ! -s /home/$user/Downloads/pycharm-*.tar.gz ]; do
    printf "" 
done

tar xfvz /home/$user/Downloads/pycharm-*.tar.gz -C /opt
mv /opt/pycharm* /opt/pyCharm
#chown -R $user:$group /opt/pyCharm
chmod +x /opt/pyCharm/bin/pycharm.sh
su $user -c '/opt/pyCharm/bin/pycharm.sh'
