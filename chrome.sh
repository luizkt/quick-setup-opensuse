#!/bin/bash

sudo zypper update

# Add repo
sudo zypper ar -f http://dl.google.com/linux/chrome/rpm/stable/x86_64/ Google

# Add pub keys
sudo rpm --import https://dl.google.com/linux/linux_signing_key.pub

# Install
sudo zypper install -y google-chrome-stable

