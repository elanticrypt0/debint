#!/bin/bash

# install java
sudo apt install -y default-jdk
sudo echo "JAVA_HOME='/usr/lib/jvm/java-17-openjdk-amd64'" >> /etc/environment

source /etc/environment