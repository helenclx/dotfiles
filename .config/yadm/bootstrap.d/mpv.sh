#!/usr/bin/env bash

echo "Installing plugins for MPV player..."

echo "Install uosc, a feature-rich minimalist proximity-based UI for MPV..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/tomasklaen/uosc/HEAD/installers/unix.sh)"
