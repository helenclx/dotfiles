#!/usr/bin/env bash

echo "Setting up the Catppuccin global theme for KDE Plasma..."

mkdir -p "$HOME/Downloads" && cd "$HOME/Downloads" || exit 1

echo "Cloning the Catppuccin global theme for KDE Plasma into the Downloads folder..."
git clone --depth=1 https://github.com/catppuccin/kde catppuccin-kde && cd catppuccin-kde || exit 1
echo "Installing the Catppuccin global theme for KDE Plasma..."
chmod +x install.sh
./install.sh

cd "$HOME" || exit 1
