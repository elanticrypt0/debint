#!/bin/bash

ACA=pwd
# This scripts install programs to OSINT tasks
#
sudo apt update && sudo apt upgrade -y
# Remove this applications
sudo apt remove -y gnome-game thunderbird cheese
sudo apt remove -y rhythmbox
sudo apt remove -y libreoffice

bash install_apps.sh

# fix pip problem
sudo rm /usr/lib/python3.11/EXTERNALLY-MANAGED

# install pip modules
pip install sherlock-project

#install seclist
cd /opt && git clone https://github.com/danielmiessler/SecLists

# make .sh files executables

cd $ACA

sudo chmod +x ~/*.sh

#install go
bash install_go.sh

cd $ACA

# install java
bash install_java.sh

# update PATH
bhas update_path.sh

#install ffuf xextractor
go install https://github.com/ffuf/ffuf 
go install https://github.com/k23dev/xextractor

# install zappproxy
bash install_zapproxy.sh
