#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL Apache2'
echo '###############################################'

apt-get install apache2 apache2-doc
groupadd www
adduser $user www
chgrp www /var/www
chmod g+w /var/www 
