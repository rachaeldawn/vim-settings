setlocal tabstop=2
setlocal shiftwidth=2
setlocal listchars="tab:>-,trail:·,lead:·,multispace:·"

autocmd Filetype vue setlocal iskeyword+=-

let g:coc_global_extensions += [ '@yaegassy/coc-volar', '@yaegassy/coc-volar-tools' ]
