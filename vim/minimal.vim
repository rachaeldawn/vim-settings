let s:path = fnamemodify(resolve(expand('<sfile>:p')), ':h')

function! s:sourceFile(filename)
  exec 'so' s:path . '/' . a:filename
endfunction

" Minimal shortcuts
call s:sourceFile('shortcuts.vim')

au FocusGained,BufEnter * :silent! checktime

set viminfo='1000,f1

" Autosave when focus lost
" au FocusLost,WinLeave * :silent! w

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
