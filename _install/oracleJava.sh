#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL oracle java'
echo '###############################################'

add-apt-repository ppa:webupd8team/java
apt-get update
apt-get install oracle-java7-installer

echo '==========='
echo 'Choose JRE'
echo '==========='    
update-alternatives --config java

echo '==========='
echo 'Choose JDK'
echo '==========='    
update-alternatives --config javac

java -version
