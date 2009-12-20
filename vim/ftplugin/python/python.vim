
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"python general settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Number of spaces to use for each step of (auto)indent.
setlocal shiftwidth=4
"Number of spaces that a <Tab> in the file counts for.
setlocal tabstop=4
"Use the appropriate number of spaces to insert a <Tab>
setlocal expandtab
"Print the line number in front of each line
setlocal number
"color the line number in a different color
highlight LineNr guibg=lightblue ctermbg=lightgray

"When a bracket is inserted, briefly jump to the matching one
setlocal showmatch

"Don't copy indent from current line when starting a new line
setlocal cindent

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Improved syntax
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Code completion
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType python set omnifunc=pythoncomplete#Complete

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Trim trailing whitespace
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType python autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"pylint
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"pylint
"http://www.vim.org/scripts/script.php?script_id=891
"assing pylint as compiler to the python files
autocmd FileType python compiler pylint
"To disable calling Pylint every time a buffer is saved put into .vimrc file
"let g:pylint_onwrite = 0
"Displaying code rate calculated by Pylint can be avoided by setting
"let g:pylint_show_rate = 0
"Openning of QuickFix window can be disabled with
"let g:pylint_cwindow = 0
"Of course, standard :make command can be used as in case

"the quickfix window is not always 10 lines height
au FileType qf call AdjustWindowHeight(3, 10)
function! AdjustWindowHeight(minheight, maxheight)
    exe max([min([line("$"), a:maxheight]), a:minheight]) . "wincmd _"
endfunction

"quickfix toogle
command! -bang -nargs=? QFix call QFixToggle(<bang>0)
function! QFixToggle(forced)
  if exists("g:qfix_win") && a:forced == 0
    cclose
    let g:pylint_cwindow = 0
    unlet g:qfix_win
  else
    copen 10
    call AdjustWindowHeight(3, 10)
    let g:pylint_cwindow = 1
    let g:qfix_win = bufnr("$")
  endif
endfunction


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"highlight columns over 80
"from http://vim.wikia.com/wiki/Highlight_long_lines
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"folding
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Default, all folds closed
set foldlevel=0

"uses space to toggle folding
nnoremap <space> za
vnoremap <space> zf

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <silent> w<F5> :QFix<CR>
"code complete
inoremap <Nul> <C-x><C-o>
