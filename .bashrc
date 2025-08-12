# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Customise prompt
# Default: PS1='[\u@\h \W]\$'
PS1='[\[\033[01;34m\]\u@\h\[\033[00m\]:\[\033[01;32m\]\w\[\033[00m\]]\$ '

# Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Ignore duplicate lines and omits lines that start with space
export HISTCONTROL=ignoreboth
# Slim shell history
export HISTIGNORE="pwd:ls:ls -l:cd:clear"
# Set default editor
export EDITOR=nvim

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# zoxide
# Must be added to the last line in this config file
eval "$(zoxide init bash)"
