#!/bin/bash

sudo zypper update

# Unzip
tar -zxvf jdk-*.tar.gz
mv jdk*/ jdk-oracle-11
sudo mv jdk-oracle-11/ /usr/lib

sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jdk-oracle-11/bin/java" 3
sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jdk-oracle-11/bin/javac" 3
sudo update-alternatives --install "/usr/bin/jar" "jar" "/usr/lib/jdk-oracle-11/bin/jar" 3
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/lib/jdk-oracle-11/bin/javaws" 3

sudo update-alternatives --set java /usr/lib/jdk-oracle-11/bin/java
sudo update-alternatives --set javac /usr/lib/jdk-oracle-11/bin/javac
sudo update-alternatives --set jar /usr/lib/jdk-oracle-11/bin/jar
sudo update-alternatives --set javaws /usr/lib/jdk-oracle-11/bin/javaws

sudo update-alternatives --config java
sudo update-alternatives --config javac
sudo update-alternatives --config jar
sudo update-alternatives --config javaws
