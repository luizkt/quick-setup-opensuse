#!/bin/bash
sudo zypper update

sudo ypper addrepo https://download.opensuse.org/repositories/Cloud:Tools/openSUSE_Leap_15.1/Cloud:Tools.repo
sudo zypper refresh
sudo zypper install -y aws-cli
