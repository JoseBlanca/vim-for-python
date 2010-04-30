set encoding=utf8

"required to load the indent and the ftplugin
filetype plugin on
filetype indent on

"While typing a search command, show where the pattern matches
setlocal incsearch
"When there is a previous search pattern, highlight all its matches
setlocal hlsearch

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set wildmenu
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu
set wildmode=longest:full
set wildignore=*.pyc

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Settings for python files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType python source ~/.vim/ftplugin/python/python.vim


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"control up down to change between buffers
noremap <C-Down> <C-W>j
noremap <C-Up> <C-W>k
"changes the buffer in the current window to the next or the previous one
noremap <C-right> <ESC>:bn<CR>
noremap <C-left> <ESC>:bp<CR>


