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

filetype plugin indent on

"Configurations
syntax enable
set background=dark
colorscheme solarized

set expandtab
set tabstop=4
set shiftwidth=4

set nobackup
set noswapfile

"Enable mouse
set mouse=a

"Set case insensitive
set ignorecase

set foldlevelstart=20

"This is for the GNOME terminal in order to change the cursor shape when in
"insert mode
if has("autocmd")
    au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Solarized/cursor_shape ibeam"
    au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Solarized/cursor_shape block"
    au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Solarized/cursor_shape block"
endif

au FileType javascript call JavaScriptFold()
