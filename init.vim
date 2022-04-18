set nocompatible

filetype off

let s:path = fnamemodify(resolve(expand('<sfile>:p')), ':h')

if stridx(&rtp, s:path) < 1
  let &rtp .= ',' . s:path
endif

exec 'so' s:path . '/vim/minimal.vim'

if has('nvim')
  lua require 'init'
endif
