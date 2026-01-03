#!/usr/bin/env bash

echo "Setting up Neovim..."

echo "Backing up Neovim files..."
mv ~/.config/nvim{,.bak}
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}

echo "Cloning Helen Chong's LazyVim configurations..."
git clone https://git.helenchong.dev/helenchong/LazyVim.git ~/.config/nvim

echo "Follow the rest of installation instructions to finish setting up Neovim:"
echo "https://git.helenchong.dev/helenchong/LazyVim"
