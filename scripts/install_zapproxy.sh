#!/bin/bash

# install zapproxy

ZAPFILE="ZAP_2_15_0_unix.sh"

cd /opt && wget https://github.com/zaproxy/zaproxy/releases/download/v2.15.0/$ZAPFILE
bash $ZAPFILE