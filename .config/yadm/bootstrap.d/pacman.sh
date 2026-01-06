#!/usr/bin/env bash

echo "Installing packages from Arch Linux's repository..."

echo "Installing software dependencies from Arch Linux's repository..."
sudo pacman -S --needed calf curl chafa fd jq lsp-plugins-lv2 noto-fonts-cjk python python-pipx unzip

echo "Installing main software from Arch Linux's repository..."
sudo pacman -S --needed asciinema bash bat easyeffects elisa eza fastfetch fcitx5 fcitx5-chinese-addons fcitx5-qt fcitx5-gtk fcitx5-configtool fish foliate fzf ghostwriter glow halloy hyfetch kate kcharselect kitty konsole lazygit mpv mpv-mpris neovim ripgrep starship tealdeer tmux vim zoxide
