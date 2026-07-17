#!/usr/bin/env bash

echo "Setting up the Catppuccin global theme for KDE Plasma..."

echo "Cloning the Catppuccin global theme for KDE Plasma into the Downloads folder..."
mkdir -p "$HOME/Downloads" && cd "$HOME/Downloads" || exit 1
git clone --depth=1 https://github.com/catppuccin/kde catppuccin-kde && cd catppuccin-kde || exit 1

echo "Installing the Catppuccin global theme for KDE Plasma: Mocha flavour, Mauve accent with the Modern window decorations..."
./install.sh 1 4 2 auto

cd "$HOME" || exit 1
