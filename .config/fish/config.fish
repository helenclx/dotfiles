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

# Integrate certain programs into the shell
fzf --fish | source
# The following lines must be added to the end of this config file
starship init fish | source
zoxide init fish | source
