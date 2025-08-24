# Disable fish greeting
set -g fish_greeting

# Integrate certain programs into the shell
fzf --fish | source
# The following lines must be added to the end of this config file
starship init fish | source
zoxide init fish | source
