#!/bin/bash

sudo zypper update

# Download
wget https://dl.pstmn.io/download/latest/linux64 -O postman-linux-x64.tar.gz

# Unzip
sudo tar -xvzf postman-linux-x64.tar.gz -C /opt

#Remove tar.gz file
rm postman-linux-x64.tar.gz

# SimLink
sudo ln -s /opt/Postman/Postman /usr/bin/postman

# Shortcut
cat << EOF > ~/.local/share/applications/postman2.desktop
[Desktop Entry]
Name=Postman
GenericName=API Client
X-GNOME-FullName=Postman API Client
Comment=Make and view REST API calls and responses
Keywords=api;
Exec=/opt/Postman/Postman
Terminal=false
Type=Application
Icon=/opt/Postman/app/resources/app/assets/icon.png
Categories=Development;Utilities;
EOF
