#!/usr/bin/env bash

echo "Cloning the Catppuccin global theme for KDE Plasma into the Downloads folder..."
mkdir -p "$HOME/Downloads" && cd "$HOME/Downloads" || return
git clone --depth=1 https://github.com/catppuccin/kde catppuccin-kde && cd catppuccin-kde || return
echo "Installing the Catppuccin global theme for KDE Plasma..."
chmod +x install.sh
./install.sh
cd "$HOME" || return
