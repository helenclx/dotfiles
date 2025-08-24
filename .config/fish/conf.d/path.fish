# Export $PATH
fish_add_path -P $HOME/Executables
fish_add_path -P $HOME/bin
fish_add_path -P $HOME/.local/bin
fish_add_path -P $HOME/.local/share/gem/ruby/3.4.0/bin

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
