setlocal tabstop=4
setlocal shiftwidth=4
setlocal expandtab
setlocal smartindent
setlocal autoindent

inoremap <expr> <C-Space> pumvisible() ? '<C-n>' : getline('.')[col('.')-2] =~# '[[:alnum:].-_#$]' ? '<C-x><C-o>' : '<Tab>'
