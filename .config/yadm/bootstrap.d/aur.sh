#!/usr/bin/env bash

install_aur_package() {
	local PACKAGE=$1
	local LOG_NAME=${2:-$PACKAGE}
	yay -S "$PACKAGE" 2>&1 | tee "$BOOTSTRAP_LOG_DIR/$LOG_NAME.log"
}

echo "Installing AUR packages for these config files..."

echo "Installing ElecWhat..."
install_aur_package "elecwhat-bin" "elecwhat"

echo "Installing Heroic Games Launcher..."
install_aur_package "heroic-games-launcher-bin" "heroic-games-launcher"

echo "Installing topgrade..."
install_aur_package "topgrade"
