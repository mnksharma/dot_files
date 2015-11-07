#! /bin/bash
set -xv
mkdir -p ~/.vim/bundle
mkdir -p ~/.vim/backup
mkdir -p ~/.vim/swap


git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "source ~/dot_files/mayank_bash.sh" >> ~/.bashrc
