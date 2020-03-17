#!/bin/bash
sudo zypper update

wget https://zoom.us/client/latest/zoom_openSUSE_x86_64.rpm
sudo zypper install -y zoom_openSUSE_x86_64.rpm
rm zoom_openSUSE_x86_64.rpm
