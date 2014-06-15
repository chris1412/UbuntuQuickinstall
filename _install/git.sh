#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL Git'
echo '###############################################'

apt-get install git git-svn git-cvs gitg
su $user -c 'gitg'
