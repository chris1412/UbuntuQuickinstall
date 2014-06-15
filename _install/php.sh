#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL PHP5'
echo '###############################################'

DEPENDENCIES="apache2" # space separated
echo "Dependencies:"
for DEPENDENCY  in $DEPENDENCIES; do
    echo "------------------"
    echo "check for $PACKAGE:"
    if ! dpkg-query -W $DEPENDENCY; then 
        echo "Required package $DEPENDENCY is not installed!" 1>&2
        exit 1
    fi
    echo "------------------"
done

apt-get install php5 php5-cli php5-curl php5-gd php5-imagick php5-imap php5-sqlite php5-json php5-mysql phpunit

mkdir -p /etc/php5/apache2
mkdir -p /etc/php5/cli

meld etc/php5/apache2/php.ini /etc/php5/apache2/php.ini
meld etc/php5/cli/php.ini /etc/php5/cli/php.ini
