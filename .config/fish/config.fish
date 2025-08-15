# Disable fish greeting
set -g fish_greeting

# Set default editor
export EDITOR=nvim

# Export $PATH
fish_add_path -P $HOME/Executables
fish_add_path -P $HOME/bin
fish_add_path -P $HOME/.local/bin
fish_add_path -P $HOME/.local/share/gem/ruby/3.4.0/bin

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# The following lines must be added to the last line in this config file
zoxide init fish | source
starship init fish | source
