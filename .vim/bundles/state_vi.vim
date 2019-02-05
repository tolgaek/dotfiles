if g:dein#_cache_version != 100 | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/tekm/.vimrc'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/tekm/.vim/bundles'
let g:dein#_runtime_path = '/Users/tekm/.vim/bundles/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/Users/tekm/.vim/bundles/.cache/.vimrc'
let &runtimepath = '/Users/tekm/.vim,/Users/tekm/.vim/bundles/repos/github.com/altercation/vim-colors-solarized,/Users/tekm/.vim/dein/repos/github.com/Shougo/dein.vim,/Users/tekm/.vim/bundles/.cache/.vimrc/.dein,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/Users/tekm/.vim/bundles/.cache/.vimrc/.dein/after,/usr/share/vim/vimfiles/after,/Users/tekm/.vim/after'