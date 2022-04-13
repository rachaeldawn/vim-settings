let s:path = fnamemodify(resolve(expand('<sfile>:p')), ':h')

function! s:sourceFile(filename)
  exec 'so' s:path . '/' . a:filename
endfunction

" Minimal shortcuts
call s:sourceFile('shortcuts.vim')
