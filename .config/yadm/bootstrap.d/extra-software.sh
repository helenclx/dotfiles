#!/usr/bin/env bash

echo "Installing additional software from outside Arch Linux's repo and AUR..."

echo "Installing superfile with its official install script..."
bash -c "$(curl -sLo- https://superfile.dev/install.sh)"

echo "Installing Deno, which is required by yt-dlp to solve YouTube's JavaScript challenges..."
curl -fsSL https://deno.land/install.sh | sh
echo "Installng yt-dlp with pipx..."
pipx install yt-dlp[default]

echo "Downloading and installing yt-x from GitHub..."
curl -sL "https://raw.githubusercontent.com/Benexl/yt-x/refs/heads/master/yt-x" -o ~/.local/bin/yt-x && chmod +x ~/.local/bin/yt-x

echo "Downloading and installing the lastest version of ElecWhat from GitHub..."
mkdir -p "$HOME/Downloads" && cd "$HOME/Downloads" || return
ELECWHAT_URL=$(curl -s https://api.github.com/repos/piec/elecwhat/releases |
	grep '"browser_download_url":' |
	grep '\.pacman"' |
	head -n 1 |
	sed -E 's/.*"([^"]+)".*/\1/')
curl -LO "$ELECWHAT_URL"
sudo pacman -U "$(basename "$ELECWHAT_URL")"
cd "$HOME" || return

echo "Downloading and installing the latest version of FreeTube from GitHub..."
mkdir -p "$HOME/Downloads" && cd "$HOME/Downloads" || return
FREETUBE_URL=$(curl -s https://api.github.com/repos/FreeTubeApp/FreeTube/releases |
	grep '"browser_download_url":' |
	grep '\.pacman"' |
	head -n 1 |
	sed -E 's/.*"([^"]+)".*/\1/')
curl -LO "$FREETUBE_URL"
sudo pacman -U "$(basename "$FREETUBE_URL")"
cd "$HOME" || return
