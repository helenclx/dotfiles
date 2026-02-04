#!/usr/bin/env bash

echo "Installing AUR packages for these config files..."

echo "Installing gpu-screen-recorder and gpu-screen-recorder-ui..."
yay -S gpu-screen-recorder gpu-screen-recorder-ui 2>&1 | tee "$BOOTSTRAP_LOG_DIR/gpu-screen-recorder.log"

echo "Installing ElecWhat..."
yay -S elecwhat-bin 2>&1 | tee "$BOOTSTRAP_LOG_DIR/elecwhat.log"

echo "Installing topgrade..."
yay -S topgrade 2>&1 | tee "$BOOTSTRAP_LOG_DIR/topgrade.log"
