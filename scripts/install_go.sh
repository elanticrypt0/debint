#!/bin/bash

# install go
GOFILE="go1.22.5.linux-amd64.tar.gz"
cd /opt && curl https://go.dev/dl/$GOFILE && tar -xvf $GOFILE && rm $GOFILE
# add go to ENVIROMENTS
sudo echo "GOROOT='/opt/go" >> /etc/environment
sudo echo "GOBIN='/opt/go/bin" >> /etc/environment

source /etc/environment