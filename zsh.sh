#!/bin/bash
sudo zypper update

sudo zypper addrepo https://download.opensuse.org/repositories/shells/openSUSE_Leap_15.1/shells.repo
sudo zypper refresh
sudo zypper install zsh
