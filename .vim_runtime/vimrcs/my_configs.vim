
nnoremap <A-j> :m+<CR>==
nnoremap <A-k> :m-2<CR>==
inoremap <A-j> <Esc>:m+<CR>==gi
inoremap <A-k> <Esc>:m-2<CR>==gi
vnoremap <A-j> :m'>+<CR>gv=gv
vnoremap <A-k> :m-2<CR>gv=gv

:cabbrev h tab h

:cabbrev l LocateFile
let g:EclimLocateFileDefaultAction = 'vsplit'
"let g:EclimJavaSearchSingleResult = 'edit'
let g:SuperTabDefaultCompletionType = "context"
set completeopt=longest,menuone
set ignorecase

set autochdir
let NERDTreeChDirMode=2
nnoremap <leader>n :NERDTree .<CR>

" Map Enter key with the Java Context search
nnoremap <silent> <buffer> <cr> :JavaSearchContext<cr>

" Highlight search results by default
set hlsearch

"Highlight the variable names under the cursor automatically
":autocmd CursorMoved * exe printf('match IncSearch /\<%s\>/', expand('<cword>'))
