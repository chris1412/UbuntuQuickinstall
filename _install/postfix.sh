#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL Postfix'
echo '###############################################'

apt-get install postfix libsasl2-modules bsd-mailx 

meld etc/postfix/main.cf /etc/postfix/main.cf
touch /etc/postfix/sasl_password
meld etc/postfix/sasl_password /etc/postfix/sasl_password
chmod 600 /etc/postfix/sasl_password

echo 'generate database'
postmap hash:/etc/postfix/sasl_password 

echo 'manage aliases'
meld etc/aliases /etc/aliases
newaliases

/etc/init.d/postfix restart 
