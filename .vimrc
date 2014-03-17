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
Bundle 'tpope/vim-surround'
Bundle 'Shutnik/jshint2.vim'
Bundle 'kchmck/vim-coffee-script'

filetype plugin indent on

"Configurations
syntax enable
set background=dark
colorscheme darkblue

set expandtab
set tabstop=2
set shiftwidth=2

set nobackup
set noswapfile

"Enable mouse
set mouse=a

"Set case insensitive
set ignorecase

set foldlevelstart=20

au FileType javascript call JavaScriptFold()
filetype plugin indent on
