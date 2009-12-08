" **************************************************************************************
" python comments.vim  
" **************************************************************************************
" Description : Global Plugin to comment and un-comment python 
"               source files in both normal and visual <Shift-V> mode
" Last Change : 8th December, 2009
" Created By  : Jose Blanca using the plugin by Jasmeet Singh Anand
" Version     : 1.0
" Usage       : For VIM 6 -
"               Stick this file in your ~/.vim/plugin directory or 
"               in some other 'plugin' directory that is in your runtime path
" Note        : I have provided the following key mappings
"               To comment    <Ctrl-3> in both normal and visua range select mode
"               To un-comment <Ctrl-Shift-3> in both normal and visual range select mode
"               These can be changed based on user's likings or usage
" Contact     : For any comments or bug fixes email me at <jblanca@btc.upv.es>
" *********************************************************************************************
if exists("loaded_python_comments_plugin")
  finish
endif

let loaded_python_comments_plugin="v1.0"

" key-mappings for comment line in normal mode
noremap  <silent> <C-C> :call CommentLine()<CR>
" key-mappings for range comment lines in visual <Shift-V> mode
vnoremap <silent> <C-C> :call RangeCommentLine()<CR>

" key-mappings for un-comment line in normal mode
noremap  <silent> <C-X> :call UnCommentLine()<CR>
" key-mappings for range un-comment lines in visual <Shift-V> mode
vnoremap <silent> <C-X> :call RangeUnCommentLine()<CR>

" function to comment line in normal mode
function! CommentLine()
  echo 'hola'
  execute ":silent! normal ^i#\<ESC>\<down>^"
endfunction

" function to un-comment line in normal mode
function! UnCommentLine()
  execute ":silent! normal :nohlsearch\<CR>:s/\\#//\<CR>:nohlsearch\<CR>"
endfunction

" function to range comment lines in visual mode
function! RangeCommentLine()
  execute ":silent! normal :s/\\S/\\#\\0/\<CR>:nohlsearch<CR>"
endfunction

" function to range un-comment lines in visual mode
function! RangeUnCommentLine()
  execute ":silent! normal :s/\\#//\<CR>:nohlsearch\<CR>"
endfunction

