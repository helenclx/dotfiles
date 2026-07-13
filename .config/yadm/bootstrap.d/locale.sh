#!/usr/bin/env bash

set -euo pipefail

echo "Setting up the system locale..."

LOCALE_GEN_FILE=/etc/locale.gen
LOCALES=("en_GB.UTF-8" "en_SG.UTF-8" "ms_MY.UTF-8")

for locale in "${LOCALES[@]}"; do
	# Reference: https://gist.github.com/le0me55i/e1f2244cdc0d64d8e541378357543b15
	sudo sed -i "/$locale/s/^#*//" "$LOCALE_GEN_FILE"
done

sudo locale-gen
