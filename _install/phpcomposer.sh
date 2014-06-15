#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL PHPCOMPOSER'
echo '###############################################'

DEPENDENCIES="curl" # space separated
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

curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

