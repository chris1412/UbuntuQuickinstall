#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL open jdk'
echo '###############################################'

apt-get install openjdk-7-doc openjdk-7-jdk openjdk-7-jre openjdk-7-jre-headless openjdk-7-jre-lib openjdk-7-source                

echo '==========='
echo 'Choose JRE'
echo '==========='    
update-alternatives --config java

echo '==========='
echo 'Choose JDK'
echo '==========='    
update-alternatives --config javac

java -version
