#!/usr/bin/env bash

set -euo pipefail

AUR_HELPER="paru"

mkdir -p "$HOME/Downloads" && cd "$HOME/Downloads" || exit 1

echo "Compiling $AUR_HELPER, the AUR helper..."
{
	sudo pacman -S --needed base-devel
	git clone "https://aur.archlinux.org/$AUR_HELPER.git"
	cd $AUR_HELPER || exit 1
	makepkg -si
} 2>&1 | tee "$BOOTSTRAP_LOG_DIR/$AUR_HELPER.log"

install_aur_package() {
	local PACKAGE=$1
	local LOG_NAME=${2:-$PACKAGE}
	$AUR_HELPER -S "$PACKAGE" 2>&1 | tee "$BOOTSTRAP_LOG_DIR/$LOG_NAME.log"
}

echo "Installing AUR packages for these config files..."

echo "Installing ElecWhat..."
install_aur_package "elecwhat-bin" "elecwhat"

echo "Installing Heroic Games Launcher..."
install_aur_package "heroic-games-launcher-bin" "heroic-games-launcher"

echo "Installing topgrade..."
install_aur_package "topgrade"

cd "$HOME" || exit 1
