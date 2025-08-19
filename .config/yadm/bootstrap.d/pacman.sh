#!/usr/bin/env bash

pacman_packages="bat easyeffects lsp-plugins-lv2 calf fcitx5 fcitx5-chinese-addons fcitx5-qt fcitx5-gtk fcitx5-configtool noto-fonts-cjk fish foliate ghostwriter kate kcharselect konsole mpv mpv-mpris neovim starship tmux vim python python-pipx zoxide unzip"

sudo pacman -S --needed "$pacman_packages"
