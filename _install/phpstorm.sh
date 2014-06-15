#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL PhpStorm'
echo '###############################################'

echo "Download PhpStorm from http://www.jetbrains.com/phpstorm - PhpStorm-*.tar.gz" 
while [ ! -s /home/$user/Downloads/PhpStorm-*.tar.gz ]; do
    printf "" 
done

tar xfvz /home/$user/Downloads/PhpStorm-*.tar.gz -C /opt
mv /opt/PhpStorm* /opt/PhpStorm
#chown -R $user:$group /opt/PhpStorm
chmod +x /opt/PhpStorm/bin/phpstorm.sh
su $user -c '/opt/PhpStorm/bin/phpstorm.sh'
