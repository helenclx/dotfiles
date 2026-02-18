# Display random fortune quotes with cowsay creatures
function random_cowsay_fortune
    set -l quotes art computers linux literature pets riddles science tao wisdom
    set -l quote_choice $(random choice $quotes)
    set -l creatures alpaca bunny default hellokitty llama sheep tux
    set -l creature_choice $(random choice $creatures)

    fortune $quote_choice | cowsay -f $creature_choice
end

# Set fish greeting
function fish_greeting
    # If fortune and cowsay commands are available
    if command -q fortune and command -q cowsay
        random_cowsay_fortune
    end
end

# Set theme for fish shell
fish_config theme choose "Catppuccin Mocha"

# Set fish shell prompt
fish_config prompt choose nim

# Integrate certain programs into the shell
fzf --fish | source
# The following lines must be added to the end of this config file
starship init fish | source
zoxide init fish | source
