#!/usr/bin/env bash

# Set Bash configuration to the one in my yadm repo
yadm restore .bashrc

# Install software and packages for my personal use
sudo dnf install -y zsh zoxide vim fcitx5 fcitx5-chinese-addons easyeffects neovim
