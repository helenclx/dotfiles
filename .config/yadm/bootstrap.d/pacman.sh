#!/usr/bin/env bash

software_deps="curl lsp-plugins-lv2 calf chafa noto-fonts-cjk jq python python-pipx unzip"

pacman_packages="bat easyeffects fcitx5 fcitx5-chinese-addons fcitx5-qt fcitx5-gtk fcitx5-configtool  fish foliate ghostwriter kate kcharselect konsole mpv mpv-mpris neovim starship tmux vim zoxide"

echo "Installing software dependencies from Arch Linux's repository..."
sudo pacman -S --needed "$software_deps"

echo "Installing main software from Arch Linux's repository..."
sudo pacman -S --needed "$pacman_packages"
