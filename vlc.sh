#!/bin/bash

sudo zypper update

sudo zypper ar https://download.videolan.org/pub/vlc/SuSE/Leap_15.0 VLC
sudo zypper mr -r VLC
sudo zypper in vlc
