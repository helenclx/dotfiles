#!/usr/bin/env bash

echo "Installng yt-dlp with pipx..."
pipx install yt-dlp

echo "Installing yt-x from repository script..."
curl -sL "https://raw.githubusercontent.com/Benexl/yt-x/refs/heads/master/yt-x" -o ~/.local/bin/yt-x && chmod +x ~/.local/bin/yt-x
