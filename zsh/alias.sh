alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias ogls='/usr/bin/ls'
alias ls='colorls --dark'
alias c='clear'
alias v='nvim'
alias vim='nvim'
alias nvimrc='cd ~/.config/nvim/'
alias rangerc='cd ~/.config/ranger/'

alias code='cd ~/Codes'

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias resource='source ~/.zshrc'

alias revise='sudo pacman -Sy'
alias pkg='sudo pacman'

alias p='python'
alias pm='python manage.py'
alias pe='pipenv'
alias pt='poetry'

alias tf='bash ~/.tmux/tmux-portal.sh'
alias ff='cd $(find ~/Codes ~/.config/nvim -type d -not -path "*/\.git*" | fzf)'
alias fff='cd $(find ~ -type d -not -path "*/\.git*" | fzf)'

# tmux stuff
alias main="tmux new-session -A -s main"

# alias keys="xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf \"%-3s %s\n\", $5, $8 }'"

# from manjaro-zsh-config ?
alias cp="cp -i"                                                # Confirm before overwriting something
alias df='df -h'                                                # Human-readable sizes
alias free='free -m'                                            # Show sizes in MB
alias gitu='git add . && git commit && git push'
