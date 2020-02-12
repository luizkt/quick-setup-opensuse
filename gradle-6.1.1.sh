#!/bin/bash

sh updateSystem.sh

wget https://services.gradle.org/distributions/gradle-6.1.1-bin.zip

sudo unzip gradle-6.1.1-bin.zip -d /opt

export PATH=$PATH:/opt/gradle-6.1.1/bin

rm gradle-6.1.1-bin.zip
