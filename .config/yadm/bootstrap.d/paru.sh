#!/usr/bin/env bash

sudo pacman -S --needed git base-devel
mkdir -p Downloads && cd Downloads || return
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd "$HOME" || return
