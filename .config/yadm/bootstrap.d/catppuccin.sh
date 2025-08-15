#!/usr/bin/env bash

mkdir -p Downloads && cd Downloads || return
git clone --depth=1 https://github.com/catppuccin/kde catppuccin-kde && cd catppuccin-kde || return
echo "Installing the Catppuccin global theme for KDE Plasma..."
chmod +x install.sh
./install.sh
cd "$HOME" || returnmkdir -p Downloads && cd Downloads || return
git clone --depth=1 https://github.com/catppuccin/kde catppuccin-kde && cd catppuccin-kde || return
echo "Installing the Catppuccin global theme for KDE Plasma..."
chmod +x install.sh
./install.sh
cd "$HOME" || return
