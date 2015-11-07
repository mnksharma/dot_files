"""""""""""""""""""""""""""""""""""""""""""""""""""""
" -> General
"""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
set number
set cursorline
set wildmenu
set wrap
set lbr
set hlsearch
set incsearch
set laststatus=2
let g:NERDTreeDirArrows=0
set encoding=utf-8


"""""""""""""""""""""""""""""""""""""""""""""""""""""
" -> Indentation 
"""""""""""""""""""""""""""""""""""""""""""""""""""""
set cindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
autocmd FileType cpp setlocal sw=2 ts=2 sts=2 expandtab


"""""""""""""""""""""""""""""""""""""""""""""""""""""
" -> Swaps and Backups
"""""""""""""""""""""""""""""""""""""""""""""""""""""
set backupdir=~/.vim/backup
set directory=~/.vim/swap


"""""""""""""""""""""""""""""""""""""""""""""""""""""
" -> Key Bindings 
"""""""""""""""""""""""""""""""""""""""""""""""""""""
map , <C-w>w
map j gj
map k gk
map <up> gk
map <down> gj
map <F5> :set number!<CR>
map <F7> :tabp <CR>
map <F8> :tabn <CR>
cmap W w
cmap Q q
nnoremap <leader>rv :source $MYVIMRC<CR>
nnoremap <C-n> :NERDTreeToggle<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""
" -> Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/vundle')
Plugin 'gmarik/Vundle.vim'
Bundle 'octol/vim-cpp-enhanced-highlight' 
    Plugin 'altercation/vim-colors-solarized'
    Plugin 'godlygeek/tabular'
    Plugin 'scrooloose/nerdtree'
    Plugin 'nathanaelkane/vim-indent-guides'
call vundle#end()            " required
filetype plugin indent on    " required


"""""""""""""""""""""""""""""""""""""""""""""""""""""
" -> VIM User Interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256
set background=dark
colorscheme solarized
let g:solarized_contrast="high"
set listchars=tab:▸\ ,eol:¬
