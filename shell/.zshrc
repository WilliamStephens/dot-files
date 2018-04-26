export PATH=$HOME/bin:$PATH
export ZSH=/Users/williamstephens/.oh-my-zsh

echo -e "\033]6;1;bg;red;brightness;40\a"
echo -e "\033]6;1;bg;green;brightness;42\a"
echo -e "\033]6;1;bg;blue;brightness;54\a"

ZSH_THEME="spaceship"

export TERM=xterm-256color
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

plugins=(
  git,
  zsh-autosuggestions
)

# ALIASES ---------------------------------------------------------------------
alias config="code $HOME/.zshrc"
alias todo="badoop"
alias clock="tty-clock -t -c"
alias core="cd $HOME/ZegoHomeRepos/core"
alias corecode="code $HOME/ZegoHomeRepos/core"
alias ui="cd $HOME/ZegoHomeRepos/ui"
alias uicode="code $HOME/ZegoHomeRepos/ui"
alias admin-ui="cd $HOME/ZegoHomeRepos/admin-ui"
alias admin-uicode="code $HOME/ZegoHomeRepos/admin-ui"

alias t="npm run test"
alias tw="npm run test --watch"

alias l='ls -la'
alias ls='colorls -a '
alias rm='rm -rf'

alias gm='git checkout master'
# FUNCTIONS -------------------------------------------------------------------


function take {
    mkdir $1
    cd $1
}

function unmount_all {
    diskutil list |
    grep external |
    cut -d ' ' -f 1 |
    while read file
    do
        diskutil unmountDisk "$file"
    done
}
# -----------------------------------------------------------------------------

source $ZSH/oh-my-zsh.sh

screenfetch -E
