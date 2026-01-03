#!/usr/bin/env bash

mkdir -p "$HOME/Downloads" && cd "$HOME/Downloads" || return

base_url="https://download.opensuse.org/repositories/home:/paul4us/Arch/x86_64/"

echo "Pulling the latest pre-build package of Klassy from Open Build Service..."
latest_bin=$(curl -s "$base_url" |
	grep -oP 'klassy-[^"]+\.pkg\.tar\.zst' |
	grep -v 'debug' |
	sort -V |
	tail -n 1)

if [ -z "$latest_bin" ]; then
	echo "Error: Could not find Klassy's binary package in the repository."
	exit 1
fi

echo "Latest Klassy binary package found: $latest_bin"
curl -L -o "$latest_bin" "${base_url}${latest_bin}"
echo "Download complete: $latest_bin"

echo "Installing Klassy..."
sudo pacman -U "$latest_bin"

cd "$HOME" || return
