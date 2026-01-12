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

echo "Installing the latest version of FreeTube..."
FREETUBE_LATEST="FreeTube-latest.pacman"
mkdir -p "$HOME/Downloads" && cd "$HOME/Downloads" || return
curl -s https://api.github.com/repos/FreeTubeApp/FreeTube/releases |
	grep '"browser_download_url":' |
	grep '\.pacman"' |
	head -n 1 |
	sed -E 's/.*"([^"]+)".*/\1/' |
	xargs curl -L -o "$FREETUBE_LATEST"
sudo pacman -U "$FREETUBE_LATEST"
cd "$HOME" || return
