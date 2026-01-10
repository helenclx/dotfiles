#!/usr/bin/env bash

echo "Setting up the Catppuccin global theme for KDE Plasma..."

mkdir -p "$HOME/Downloads" && cd "$HOME/Downloads" || return

echo "Cloning the Catppuccin global theme for KDE Plasma into the Downloads folder..."
git clone --depth=1 https://github.com/catppuccin/kde catppuccin-kde && cd catppuccin-kde || return
echo "Installing the Catppuccin global theme for KDE Plasma..."
chmod +x install.sh
./install.sh

CURSOR_VERSION=2.0.0
CURSOR_ROOT="$HOME/.local/share/icons"
CURSOR_FLAVOUR="Catppuccin-Mocha"
CURSOR_ACCENT="$CURSOR_FLAVOUR-Mauve-Cursors"
CURSOR_DARK="$CURSOR_FLAVOUR-Dark-Cursors"
CURSOR_ACCENT_DIR="$CURSOR_ROOT/$CURSOR_ACCENT"
CURSOR_DARK_DIR="$CURSOR_ROOT/$CURSOR_DARK"
CURSOR_DL_BASE="https://github.com/catppuccin/cursors/releases/download/v$CURSOR_VERSION"
CURSOR_ACCENT_ZIP="${CURSOR_ACCENT,,}.zip"
CURSOR_DARK_ZIP="${CURSOR_DARK,,}.zip"
CURSOR_ACCENT_DL="$CURSOR_DL_BASE/$CURSOR_ACCENT_ZIP"
CURSOR_DARK_DL="$CURSOR_DL_BASE/$CURSOR_DARK_ZIP"

echo "Downloading and updating the Catppuccin cursors to $CURSOR_VERSION"

if [ -d "$CURSOR_ACCENT_DIR" ]; then
	rm -rf "$CURSOR_ACCENT_DIR"
fi

if [ -d "$CURSOR_DARK_DIR" ]; then
	rm -rf "$CURSOR_DARK_DIR"
fi

wget "$CURSOR_ACCENT_DL"
unzip "$CURSOR_ACCENT_ZIP" -d "$CURSOR_ACCENT_DIR"
wget "$CURSOR_DARK_DL"
unzip "$CURSOR_DARK_ZIP" -d "$CURSOR_DARK_DIR"

cd "$HOME" || return
