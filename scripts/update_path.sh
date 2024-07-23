#!/bin/bash

sudo echo "PATH=$PATH:$GOROOT:$GOBIN:$JAVA_HOME" >> /etc/environment

source /etc/environment