#!/bin/bash

read -r -p "Enter student name : " hostname

sudo apt-get autoremove -y minecraft-pi
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y codeblocks gitk vim meld kdiff3

sudo rm -f /usr/share/raspi-ui-overrides/applications/python-games.desktop
sudo rm -rf ~/python_games

# change the host name
sudo sh -c "sed \"s/raspberrypi/${hostname}-pi/\" </etc/hosts >/etc/hosts"

# change the timezone
sudo sh -c "echo Etc/GMT > /etc/timezone"

