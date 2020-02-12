#!/bin/bash

sh updateSystem.sh

wget http://mirror.nbtelecom.com.br/apache/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz

sudo tar -zxvf apache-maven-3.6.3-bin.tar.gz -C /opt

export PATH=/opt/apache-maven-3.6.3/bin:$PATH

rm apache-maven-3.6.3-bin.tar.gz
