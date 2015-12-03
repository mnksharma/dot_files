echo "Loading Mayank's Bash settings"
export EDITOR=vim
export LANG=en_GB.UTF-8
alias grep='grep --color=auto'
alias ll="ls --color='always' -al"
alias ls="ls --color='always'"
alias llgrep='ll | grep'
alias vi='vim'

## TMUX aliases
alias t='tmux'
alias tnew='t new -s'
alias tat='t a -t'
alias tls='t ls'
alias tkill='t kill-session -t'

# Dark Background
export PS1="\[\e[00;37m\][\[\e[0m\]\[\e[00;31m\]\u\[\e[0m\]\[\e[00;37m\]@\[\e[0m\]\[\e[00;34m\]\h\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[00;36m\]\t\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[00;32m\]\w\[\e[0m\]\[\e[00;37m\]]\$ \[\e[0m\]"

# Light Background
#export PS1="[\[$(tput sgr0)\]\[\033[38;5;196m\]\u\[$(tput sgr0)\]\[\033[38;5;0m\]@\[$(tput sgr0)\]\[\033[38;5;4m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;6m\]\T\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;2m\]\w\[$(tput sgr0)\]\[\033[38;5;0m\]]\\$ \[$(tput sgr0)\]"

function dusorted(){
    for i in G M K; do du -ah --max-depth=1 | grep [0-9]$i | sort -nr -k 1; done
}
