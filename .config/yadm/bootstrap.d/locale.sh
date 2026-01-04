#!/usr/bin/env bash

echo "Setting up the system locale..."

locale_gen_file=/etc/locale.gen
# Reference: https://gist.github.com/le0me55i/e1f2244cdc0d64d8e541378357543b15
sudo sed -e '/en_GB.UTF-8/s/^#*//g' -i $locale_gen_file
sudo sed -e '/en_SG.UTF-8/s/^#*//g' -i $locale_gen_file
sudo sed -e '/ms_MY.UTF-8/s/^#*//g' -i $locale_gen_file
sudo locale-gen
