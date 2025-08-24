# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Ignore duplicate lines and omits lines that start with space
export HISTCONTROL=ignoreboth
# Slim shell history
export HISTIGNORE="pwd:ls:ls -l:cd:clear"
# Set default editor
export EDITOR=nvim

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Integrate certain programs into the shell
eval "$(fzf --bash)"
# The following lines must be added to the end of this config file
eval "$(starship init bash)"
eval "$(zoxide init bash)"
