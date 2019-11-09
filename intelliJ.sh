#!/bin/bash

sudo zypper update

# Add snappy repo
sudo zypper addrepo --refresh https://download.opensuse.org/repositories/system:/snappy/openSUSE_Leap_15.0 snappy 

# Import GPG key
sudo zypper --gpg-auto-import-keys refresh

# Updgrade package
sudo zypper dup --from snappy

# Install snap
sudo zypper install -y snapd

source /etc/profile

# Enable snapd
sudo systemctl enable snapd
sudo systemctl start snapd
sudo systemctl enable snapd.apparmor
sudo systemctl start snapd.apparmor

source /etc/profile

# Install intelliJ
sudo snap install intellij-idea-community --classic
