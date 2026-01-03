#!/usr/bin/env bash

echo "Compiling yay, the AUR helper..."

sudo pacman -S --needed git base-devel
mkdir -p Downloads && cd Downloads || return
git clone https://aur.archlinux.org/yay.git
cd yay || return
makepkg -si
cd "$HOME" || return
