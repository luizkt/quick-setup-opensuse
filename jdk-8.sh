#!/bin/bash

sudo zypper update

#Download
#wget --user=keese.luiz@gmail.com --ask-password 
https://download.oracle.com/otn/java/jdk/8u231-b11/5b13a193868b4bf28bcb45c792fce896/jdk-8u231-linux-x64.tar.gz

# Unzip
tar -zxvf jdk-*.tar.gz
mv jdk*/ jdk-oracle-8
sudo mv jdk-oracle-8/ /usr/lib

sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jdk-oracle-8/bin/java" 3
sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jdk-oracle-8/bin/javac" 3
sudo update-alternatives --install "/usr/bin/jar" "jar" "/usr/lib/jdk-oracle-8/bin/jar" 3
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/lib/jdk-oracle-8/bin/javaws" 3

sudo update-alternatives --set java /usr/lib/jdk-oracle-8/bin/java
sudo update-alternatives --set javac /usr/lib/jdk-oracle-8/bin/javac
sudo update-alternatives --set jar /usr/lib/jdk-oracle-8/bin/jar
sudo update-alternatives --set javaws /usr/lib/jdk-oracle-8/bin/javaws

sudo update-alternatives --config java
sudo update-alternatives --config javac
sudo update-alternatives --config jar
sudo update-alternatives --config javaws
