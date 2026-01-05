# Disable fish greeting
set -g fish_greeting

# Set theme for fish shell
fish_config theme choose "Catppuccin Mocha" --color-theme=dark

# Integrate certain programs into the shell
fzf --fish | source
# The following lines must be added to the end of this config file
starship init fish | source
zoxide init fish | source
