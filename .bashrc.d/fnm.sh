# fnm
FNM_PATH="$INSTALL_DIR"
if [ -d "$FNM_PATH" ]; then
	if [ "$USE_HOMEBREW" != "true" ]; then
		export PATH="$FNM_PATH:$PATH"
	fi
	eval "$(fnm env)"
fi
