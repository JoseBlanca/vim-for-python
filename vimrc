set encoding=utf8
syntax on

"required to load the indent and the ftplugin
filetype plugin on
filetype indent on

"improved status line
set laststatus=2
set statusline=%5.85f\ %=%16(\ %m%r[%{&filetype}]%)\ [%04l\ %03c][%4P]\ \|\ %{strftime('%H\:%M')}

"Settings for python files
autocmd FileType python source ~/.vim/ftplugin/python/python.vim
