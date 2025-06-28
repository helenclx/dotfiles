# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/helen/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Customise my prompt's style
PS1="%F{blue}%n@%m%f %B%F{green}%(4~|...|)%3~%F{white} %# %b%f%f"

# Set zsh options
setopt HIST_IGNORE_SPACE

# Export $PATH
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/.local/bin

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# zoxide
# Must be added to the last line of this config file
eval "$(zoxide init zsh)"

PATH="/home/helen/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/helen/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/helen/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/helen/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/helen/perl5"; export PERL_MM_OPT;
