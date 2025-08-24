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

# Code search interface function with ripgrep, fzf and bat
# Reference: https://junegunn.github.io/fzf/tips/ripgrep-integration/
# ripgrep->fzf->nvim [QUERY]
rfv() (
    RELOAD='reload:rg --column --color=always --smart-case {q} || :'
    OPENER='if [[ $FZF_SELECT_COUNT -eq 0 ]]; then
            nvim {1} +{2}     # No selection. Open the current line in Vim.
          else
            nvim +cw -q {+f}  # Build quickfix list for the selected items.
          fi'
    fzf --disabled --ansi --multi \
        --bind "start:$RELOAD" --bind "change:$RELOAD" \
        --bind "enter:become:$OPENER" \
        --bind "ctrl-o:execute:$OPENER" \
        --bind 'alt-a:select-all,alt-d:deselect-all,ctrl-/:toggle-preview' \
        --delimiter : \
        --preview 'bat --style=full --color=always --highlight-line {2} {1}' \
        --preview-window '~4,+{2}+4/3,<80(up)' \
        --query "$*"
)

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Integrate certain programs into the shell
eval "$(fzf --bash)"
# The following lines must be added to the end of this config file
eval "$(starship init bash)"
eval "$(zoxide init bash)"
