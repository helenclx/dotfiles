#!/usr/bin/env bash

install_aur_package() {
	local PACKAGE=$1
	local LOG_NAME=${2:-$PACKAGE}
	yay -S "$PACKAGE" 2>&1 | tee "$BOOTSTRAP_LOG_DIR/$LOG_NAME.log"
}

echo "Installing AUR packages for these config files..."

echo "Installing gpu-screen-recorder and gpu-screen-recorder-ui..."
install_aur_package "gpu-screen-recorder gpu-screen-recorder-ui" "gpu-screen-recorder"

echo "Installing ElecWhat..."
install_aur_package "elecwhat-bin" "elecwhat"

echo "Installing topgrade..."
install_aur_package "topgrade"
