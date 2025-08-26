#!/usr/bin/env bash

software_deps="calf curl chafa fd jq lsp-plugins-lv2 noto-fonts-cjk python python-pipx unzip"

pacman_packages="bash bat easyeffects elisa eza fcitx5 fcitx5-chinese-addons fcitx5-qt fcitx5-gtk fcitx5-configtool fish foliate fzf ghostty ghostwriter kate kcharselect konsole lazygit mpv mpv-mpris neovim ripgrep starship tmux vim zoxide"

echo "Installing software dependencies from Arch Linux's repository..."
sudo pacman -S --needed "$software_deps"

echo "Installing main software from Arch Linux's repository..."
sudo pacman -S --needed "$pacman_packages"
