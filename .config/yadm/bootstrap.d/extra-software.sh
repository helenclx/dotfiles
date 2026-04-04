#!/usr/bin/env bash

echo "Installing additional software from outside Arch Linux's repo and AUR..."

echo "Installing superfile with official install script..."
bash -c "$(curl -sLo- https://superfile.dev/install.sh)"

echo "Installing Deno, which is required by yt-dlp to solve YouTube's JavaScript challenges..."
curl -fsSL https://deno.land/install.sh | sh
echo "Installng yt-dlp with pipx..."
pipx install yt-dlp[default]

echo "Installing yt-x from repository script..."
curl -sL "https://raw.githubusercontent.com/Benexl/yt-x/refs/heads/master/yt-x" -o ~/.local/bin/yt-x && chmod +x ~/.local/bin/yt-x

echo "Installing pacman binaries of extra software..."
mkdir -p "$HOME/Downloads" && cd "$HOME/Downloads" || return

echo "Installing http-parser, a dependency for some of the following software, from AUR..."
yay -S http-parser

echo "Installing the latest version of Stretchly..."
STRETCHLY_URL=$(curl -s https://api.github.com/repos/hovancik/stretchly/releases |
	grep '"browser_download_url":' |
	grep '\.pacman"' |
	grep -v 'aarch' |
	head -n 1 |
	sed -E 's/.*"([^"]+)".*/\1/')
curl -L -O "$STRETCHLY_URL"
STRETCHLY_BIN=$(basename "$STRETCHLY_URL")
sudo pacman -U "$STRETCHLY_BIN"

bash freetube-install

echo "Downloading and installing the latest version of Karousel, the script to add scrollable tiling window management to KDE Plasma..."
bash karousel-install

cd "$HOME" || return
