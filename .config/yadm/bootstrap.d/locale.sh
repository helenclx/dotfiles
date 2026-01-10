#!/usr/bin/env bash

echo "Setting up the system locale..."

LOCALE_GEN_FILE=/etc/locale.gen
# Reference: https://gist.github.com/le0me55i/e1f2244cdc0d64d8e541378357543b15
sudo sed -e '/en_GB.UTF-8/s/^#*//g' -i $LOCALE_GEN_FILE
sudo sed -e '/en_SG.UTF-8/s/^#*//g' -i $LOCALE_GEN_FILE
sudo sed -e '/ms_MY.UTF-8/s/^#*//g' -i $LOCALE_GEN_FILE
sudo locale-gen
