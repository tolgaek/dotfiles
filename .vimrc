set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles
Bundle 'scrooloose/syntastic'
Bundle 'einars/js-beautify'
Bundle 'Chiel92/vim-autoformat'
Bundle 'altercation/vim-colors-solarized'
Bundle 'wincent/Command-T'
Bundle 'scrooloose/nerdtree'
Bundle 'myhere/vim-nodejs-complete'
Bundle 'jelera/vim-javascript-syntax'

filetype plugin indent on

"Configurations
syntax enable
set background=dark
colorscheme solarized

set tabstop=4
set nobackup
set noswapfile

set nobackup
set noswapfile

