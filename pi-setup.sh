#!/bin/bash

read -r -p "Enter student name : " hostname

sudo apt-get autoremove -y minecraft-pi
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y codeblocks gitk vim meld kdiff3

sudo rm -f /usr/share/raspi-ui-overrides/applications/python-games.desktop
sudo rm -rf ~/python_games

# change the timezone
sudo sh -c "echo Europe/London > /etc/timezone"

# change the host name
sudo sed -i.bak "s/raspberrypi/${hostname}-pi/" /etc/hosts
sudo sh -c "echo ${hostname}-pi > /etc/hostname"

