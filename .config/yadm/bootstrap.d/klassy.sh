#!/usr/bin/env bash

echo "Downloading and installing Klassy, a theming plugin for KDE Plasma..."

mkdir -p "$HOME/Downloads" && cd "$HOME/Downloads" || return

DL_BASE_URL="https://download.opensuse.org/repositories/home:/paul4us/Arch/x86_64/"

echo "Pulling the latest pre-build package of Klassy from Open Build Service..."
LATEST_BIN=$(curl -s "$DL_BASE_URL" |
	grep -oP 'klassy-[^"]+\.pkg\.tar\.zst' |
	grep -v 'debug' |
	sort -V |
	tail -n 1)

if [ -z "$LATEST_BIN" ]; then
	echo "Error: Could not find Klassy's binary package in the repository."
	exit 1
fi

echo "Latest Klassy binary package found: $LATEST_BIN"
curl -L -o "$LATEST_BIN" "${DL_BASE_URL}${LATEST_BIN}"
echo "Download complete: $LATEST_BIN"

echo "Installing Klassy..."
sudo pacman -U "$LATEST_BIN"

cd "$HOME" || return
