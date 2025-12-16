#!/usr/bin/env bash

echo "Installing gpu-screen-recorder and gpu-screen-recorder-ui..."
yay -S gpu-screen-recorder gpu-screen-recorder-ui 2>&1 | tee "$bootstrap_log_dir/gpu-screen-recorder.log"

echo "Installing Halloy..."
yay -S halloy 2>&1 | tee "$bootstrap_log_dir/halloy.log"

echo "Installing ElecWhat..."
yay -S elecwhat-bin 2>&1 | tee "$bootstrap_log_dir/elecwhat.log"
