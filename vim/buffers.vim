let g:closing_buffers = []

function EchoBuffer(arg)
  call add(g:closing_buffers, a:arg)
endfunction

function CleanupClosing() 
  for buf in g:closing_buffers
    exec 'bdelete' buf
  endfor
  let g:closing_buffers = []
endfunction

augroup BufferAutoClosing
  autocmd BufHidden * silent! if ! &mod | call add(g:closing_buffers, expand('<abuf>')) | endif
  autocmd BufEnter * silent! call CleanupClosing()
augroup END
