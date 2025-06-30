#!/usr/bin/env bash

# Set Bash configuration to the one in my yadm repo
yadm restore .bashrc

# Install software and packages that use my custom configs
sudo dnf install -y zsh zoxide vim fcitx5 fcitx5-chinese-addons easyeffects
