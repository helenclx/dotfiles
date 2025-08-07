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

# Customise my prompt
# Git branch prompt based on:
# https://nickjanetakis.com/blog/add-a-git-branch-to-your-prompt-with-a-few-lines-fo-shell-scriptingt
git_prompt() {
    local branch="$(git symbolic-ref HEAD 2> /dev/null | cut -d'/' -f3-)"
    local branch_truncated="${branch:0:30}"

    if (( ${#branch} > ${#branch_truncated} )); then
        branch="${branch_truncated}..."
    fi

    [ -n "${branch}" ] && echo "[git:${branch}]"
}
setopt PROMPT_SUBST
PROMPT='%F{blue}╭─[%n@%m]%f%F{green}[%(4~|...|)%3~]%f%F{cyan}$(git_prompt)%f
%F{blue}╰─⮞ %f'

# Set zsh history options
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_SAVE_NO_DUPS
setopt SHARE_HISTORY

# Set default editor
export EDITOR=nvim

# Export $PATH
export PATH=$PATH:$HOME/Executables
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.local/share/gem/ruby/3.4.0/bin

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# zoxide
# Must be added to the last line of this config file
eval "$(zoxide init zsh)"
