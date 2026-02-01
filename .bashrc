# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Ignore duplicate lines and omits lines that start with space
export HISTCONTROL=ignoreboth
# Slim shell history
export HISTIGNORE="pwd:ls:ls -l:cd:clear"

# Source all scripts in ~/.bashrc.d/
if [ -d "$HOME/.bashrc.d" ]; then
	for script in "$HOME/.bashrc.d/"*; do
		if [ -f "$script" ] && [ -r "$script" ]; then
			source "$script"
		fi
	done
fi

# Integrate certain programs into the shell
eval "$(fzf --bash)"
# The following lines must be added to the end of this config file
eval "$(starship init bash)"
eval "$(zoxide init bash)"
