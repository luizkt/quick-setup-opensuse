#!/bin/bash

sudo zypper update

sudo zypper install -y docker
sudo systemctl enable docker
sudo usermod -G docker -a luizkt
