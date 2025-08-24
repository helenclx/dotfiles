# Code search interface function with ripgrep, fzf and bat
# Reference: https://junegunn.github.io/fzf/tips/ripgrep-integration/
function rg-fzf
    set RELOAD 'reload:rg --column --color=always --smart-case {q} || :'
    set OPENER 'if [[ $FZF_SELECT_COUNT -eq 0 ]]; then
        $EDITOR {1} +{2}         # No selection. Open the current line in the default editor. 
        else
            $EDITOR +cw -q {+f}  # Build quickfix list for the selected items.
        fi'
    fzf --disabled --ansi --multi \
        --bind "start:$RELOAD" --bind "change:$RELOAD" \
        --bind "enter:become:$OPENER" \
        --bind "ctrl-o:execute:$OPENER" \
        --bind 'alt-a:select-all,alt-d:deselect-all,ctrl-/:toggle-preview' \
        --delimiter : \
        --preview 'bat --style=full --color=always --highlight-line {2} {1}' \
        --preview-window '~4,+{2}+4/3,<80(up)' \
        --query "$argv"
end
