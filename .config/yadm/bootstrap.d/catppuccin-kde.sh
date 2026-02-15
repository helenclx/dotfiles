#!/usr/bin/env bash

echo "Setting up the Catppuccin global theme for KDE Plasma..."

mkdir -p "$HOME/Downloads" && cd "$HOME/Downloads" || return

echo "Cloning the Catppuccin global theme for KDE Plasma into the Downloads folder..."
git clone --depth=1 https://github.com/catppuccin/kde catppuccin-kde && cd catppuccin-kde || return
echo "Installing the Catppuccin global theme for KDE Plasma..."
chmod +x install.sh
./install.sh

FLAVOURNAME="Mocha"
ACCENTNAME="Mauve"
CURSORDIR="${XDG_DATA_HOME:-$HOME/.local/share}/icons"

echo "Downloading and updating the latest version of Catppuccin $FLAVOURNAME $ACCENTNAME cursors..."

mkdir -p "$HOME/Downloads" "$CURSORDIR"
cd "$HOME/Downloads" || return

curl https://api.github.com/repos/catppuccin/cursors/releases/latest |
	grep "browser_download_url" |
	grep -E "catppuccin-${FLAVOURNAME,,}-(${ACCENTNAME,,}|dark)-cursors.zip" |
	cut -d '"' -f 4 |
	wget -q -i -

unzip -q catppuccin-"${FLAVOURNAME,,}"-"${ACCENTNAME,,}"-cursors.zip
unzip -q catppuccin-"${FLAVOURNAME,,}"-dark-cursors.zip

for dir in catppuccin-*; do
	if [ -d "$dir" ]; then
		newname=$(echo "$dir" |
			sed -E 's/catppuccin-([a-z]+)-([a-z]+)-cursors/Catppuccin-\u\1-\u\2-Cursors/')
		newname=$(echo "$newname" |
			sed -E 's/catppuccin-([a-z]+)-cursors/Catppuccin-\u\1-Cursors/')
		mv "$dir" "$newname"
	fi
done

mv ./Catppuccin-"$FLAVOURNAME"-"$ACCENTNAME"-Cursors "$CURSORDIR"
mv ./Catppuccin-"$FLAVOURNAME"-Dark-Cursors "$CURSORDIR"

cd "$HOME" || return
