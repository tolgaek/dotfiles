set shell=sh

set nocompatible               " be iMproved
filetype off                   " required!
set autoread

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'VundleVim/Vundle.vim'
"Plugin 'gmarik/vundle'

" My Plugins
Plugin 'scrooloose/syntastic'
Plugin 'einars/js-beautify'
Plugin 'Chiel92/vim-autoformat'
Plugin 'altercation/vim-colors-solarized'
Plugin 'wincent/Command-T'
Plugin 'scrooloose/nerdtree'
Plugin 'myhere/vim-nodejs-complete'
Plugin 'tpope/vim-surround'
Plugin 'kchmck/vim-coffee-script'
Plugin 'slim-template/vim-slim'
Plugin 'tpope/vim-rails'
Plugin 'lucapette/vim-ruby-doc'
Plugin 'mileszs/ack.vim'
Plugin 'bling/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'gcmt/taboo.vim'
Plugin 'moll/vim-node'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'digitaltoad/vim-jade'
Plugin 'leafgarland/typescript-vim'
Plugin 'embear/vim-localvimrc'
Plugin 'kien/rainbow_parentheses.vim'

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
"let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_typescript_checkers = ['tslint']
let g:syntastic_ruby_checkers = ['mri']
let g:syntastic_coffee_checkers = ['coffee']

let g:airline_powerline_fonts = 1

let g:taboo_renamed_tab_format=" [%l]%f%m "

"Local vimrc disable prompt to load configs. Auto load
let g:localvimrc_ask = 0

map <C-n> :NERDTreeToggle<CR>

" Removes trailing spaces
function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction

nnoremap <silent> <Leader>rts :call TrimWhiteSpace()<CR>

" CTRLP settings
let g:ctrlp_max_files=40000
let g:ctrlp_max_depth=40
set wildignore+=*/tmp/*,*/coverage/*,*/dist/*,*/node_modules/*,*.map,*.js,*.so,*.swp,*.zip
"let g:ctrlp_custom_ignore = {
"	\ 'dir': '\v[\/]\.(git|hg|svn|coverage|dist)$',
"  \}

" Trigger trialing space on write
autocmd FileWritePre    * :call TrimWhiteSpace()
autocmd FileAppendPre   * :call TrimWhiteSpace()
autocmd FilterWritePre  * :call TrimWhiteSpace()
autocmd BufWritePre     * :call TrimWhiteSpace()
