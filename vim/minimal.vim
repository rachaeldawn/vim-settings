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
