#! /bin/bash

echo "Loading Mayank's Bash settings"

export HISTCONTROL='ignoredups'
export EDITOR=vim
export LANG=en_GB.UTF-8
export TERM=screen-256color

alias grep='grep --color=auto'
alias ll="ls --color='always' -alh"
alias lls="ls --color='always' -alSrh --group-directories-first"
alias ls="ls --color='always'"
alias llgrep='ll | grep'
alias vi='vim'
alias path='readlink -e'

# TMUX aliases
alias t='tmux'
alias tnew='t new -s'
alias tat='t a -t'
alias tls='t ls'
alias tkill='t kill-session -t'
alias w40='watch -n 1 tail -n 40'
alias w30='watch -n 1 tail -n 30'

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

pull(){
    current_branch=`parse_git_branch`
    if [[ -z $current_branch ]]; then
        echo "This is not a git repo"
        return
    fi
    echo "Pulling origin/$current_branch"
    git pull origin $current_branch
}

push(){
    current_branch=`parse_git_branch`
    if [[ -z $current_branch ]]; then
        echo "This is not a git repo"
        return
    fi
    echo "Pushing origin/$current_branch"
    git pull origin $current_branch
}

# Dark Background
export PS1="\[\e[00;37m\][\[\e[0m\]\[\e[00;31m\]\u\[\e[0m\]\[\e[00;37m\]@\[\e[0m\]\[\e[00;34m\]\h\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[00;36m\]\t\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[00;32m\]\w\[\e[0m\]\[\e[00;37m\]] (`parse_git_branch`) \$ \[\e[0m\]"

# Light Background
#export PS1="[\[$(tput sgr0)\]\[\033[38;5;196m\]\u\[$(tput sgr0)\]\[\033[38;5;0m\]@\[$(tput sgr0)\]\[\033[38;5;4m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;6m\]\T\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;2m\]\w\[$(tput sgr0)\]\[\033[38;5;0m\]]\\$ \[$(tput sgr0)\]"

function dusorted(){
    for i in G M K; do du -h --max-depth=1 | grep [0-9]$i | sort -nr -k 1; done
}

function mkcd (){
    if [ ! -n "$1" ]; then
        echo "Enter a directory name"
    elif [ -d $1 ]; then
        echo "\`$1' already exists"
    else
        mkdir $1 && cd $1
    fi
}
