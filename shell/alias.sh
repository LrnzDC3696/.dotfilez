alias nekopara="wine ~/Dame/NEKOPARA.vol.1.R18/NEKOPARA.vol.1.R18/nekopara_vol1.exe"
alias monkeytype="tt -notheme -blockcursor -bold -t 30 -nohighlight"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"
source $(dirname $(gem which colorls))/tab_complete.sh
alias cls='colorls --dark'

alias c='clear'
alias v='nvim'
alias vi='nvim'
alias vim='nvim'

alias rc='cd ~/.config'
alias rcnvim='cd ~/.config/nvim/'
alias rcranger='cd ~/.config/ranger/'

alias codes='cd ~/Codes'

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias resource='source ~/.zshrc'

alias revise='sudo pacman -Syyu'
alias pacman='sudo pacman'

alias p='python'
alias pm='python manage.py'
alias pe='pipenv'
alias pt='poetry'

alias tf='sh ~/scripts/tmux-sessionizer.sh'
alias ff='cd $(find ~/Codes ~/.config/nvim -type d -not -path "*/\.git*" | fzf)'
alias fff='cd $(find ~ -type d -not -path "*/\.git*" | fzf)'
alias ffff='cd $(find ~ | fzf)'

# tmux stuff
alias main="tmux new-session -A -s main"

alias cp="cp -i"                                                # Confirm before overwriting something
alias gitu='git add . && git commit && git push'
alias citu='config add . && config commit && config push'
