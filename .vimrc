"set shell=zsh

set nocompatible               " be iMproved
filetype off                   " required!
set autoread

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/tekm/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/tekm/.vim/bundles')
  call dein#begin('/Users/tekm/.vim/bundles')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/tekm/.vim/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('scrooloose/syntastic')
  call dein#add('einars/js-beautify')
  call dein#add('Chiel92/vim-autoformat')
  call dein#add('altercation/vim-colors-solarized')
  call dein#add('wincent/Command-T')
  call dein#add('scrooloose/nerdtree')
  call dein#add('myhere/vim-nodejs-complete')
  call dein#add('tpope/vim-surround')
  call dein#add('kchmck/vim-coffee-script')
  call dein#add('slim-template/vim-slim')
  call dein#add('tpope/vim-rails')
  call dein#add('lucapette/vim-ruby-doc')
  call dein#add('mileszs/ack.vim')
  call dein#add('bling/vim-airline')
  call dein#add('ctrlpvim/ctrlp.vim')
  call dein#add('mustache/vim-mustache-handlebars')
  call dein#add('gcmt/taboo.vim')
  call dein#add('moll/vim-node')
  call dein#add('pangloss/vim-javascript')
  call dein#add('mxw/vim-jsx')
  call dein#add('digitaltoad/vim-jade')
  call dein#add('leafgarland/typescript-vim')
  call dein#add('embear/vim-localvimrc')
  call dein#add('kien/rainbow_parentheses.vim')
  call dein#add('altercation/vim-colors-solarized', {'merged': 0})
  call dein#add('Quramy/tsuquyomi')
  call dein#source('vim-colors-solarized')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

""""""""""""""""""""""""""""""""""""""

filetype plugin indent on
syntax enable
" Dein manager end

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
set wildignore+=*/tmp/*,*/coverage/*,*/test-coverage/*,*/dist/*,*/node_modules/*,*.map,*.js,*.so,*.swp,*.zip
"let g:ctrlp_custom_ignore = {
"	\ 'dir': '\v[\/]\.(git|hg|svn|coverage|dist)$',
"  \}

" Trigger trialing space on write
autocmd FileWritePre    * :call TrimWhiteSpace()
autocmd FileAppendPre   * :call TrimWhiteSpace()
autocmd FilterWritePre  * :call TrimWhiteSpace()
autocmd BufWritePre     * :call TrimWhiteSpace()

if has("gui_macvim")
  noremap <C-}> :tabnext<CR>
  noremap <C-{> :tabprev<CR>

endif

