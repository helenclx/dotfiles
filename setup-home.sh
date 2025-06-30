#!/usr/bin/env bash

echo "--------------------"
echo "Home Directory Setup"
echo "--------------------"

echo "Change Bash configuration to the one in my dot file repo..."
yadm restore .bashrc

echo "Install additional packages that use these dot files..."
sudo dnf install -y zsh zoxide vim fcitx5 fcitx5-chinese-addons easyeffects
