set shell=sh

set nocompatible               " be iMproved
filetype off                   " required!
set autoread

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/vundle'

" My Plugins
Plugin 'scrooloose/syntastic'
Plugin 'einars/js-beautify'
Plugin 'Chiel92/vim-autoformat'
Plugin 'altercation/vim-colors-solarized'
Plugin 'wincent/Command-T'
Plugin 'scrooloose/nerdtree'
Plugin 'myhere/vim-nodejs-complete'
"Plugin 'jelera/vim-javascript-syntax'
Plugin 'tpope/vim-surround'
Plugin 'Shutnik/jshint2.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'slim-template/vim-slim'
Plugin 'tpope/vim-rails'
Plugin 'lucapette/vim-ruby-doc'
Plugin 'mileszs/ack.vim'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'heartsentwined/vim-emblem'
Plugin 'gcmt/taboo.vim'
Plugin 'moll/vim-node'
Plugin 'pangloss/vim-javascript'

call vundle#end()
filetype plugin indent on

"Configurations
syntax enable
set background=dark
"let g:solarized_termcolors=256
colorscheme solarized

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
set number

set sessionoptions+=tabpages,globals

filetype plugin indent on

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1

let g:syntastic_scss_checkers = ['scss_lint']
let g:syntastic_js_checkers = ['jshint']
let g:syntastic_ruby_checkers = ['mri']
let g:syntastic_coffee_checkers = ['coffee']

let g:airline_powerline_fonts = 1

let g:taboo_renamed_tab_format=" [%l]%f%m "
i
