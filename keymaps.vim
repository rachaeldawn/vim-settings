nnoremap <F1> :NERDTree<CR>
nnoremap <F2> :NERDTree %<CR>
nnoremap <F3> :e %:p:h

nnoremap <Leader>ef :CocFix<CR>
nnoremap <Leader>lf :ALEFix<CR>

nnoremap ; :buffers<CR>:b<Space>
nnoremap <C-;> ;buffers<CR>;bd<Space>
nnoremap <Leader>ea :YcmDiags<CR>
nnoremap <Right> :cnext<CR>
nnoremap <Left> :cprev<CR>
nnoremap <Leader>k :call comfortable_motion#flick(-100)<CR>
nnoremap <Leader>j :call comfortable_motion#flick(100)<CR>

" Tab close
nnoremap <Leader>td :tabc<CR>

" Tab Edit
nnoremap <Leader>te :tabe

" Window Close
nnoremap <Leader>wd :close<CR>
nnoremap <Leader>wl <C-W>l
nnoremap <Leader>wh <C-W>h
nnoremap <Leader>wj <C-W>j
nnoremap <Leader>wk <C-W>k
nnoremap <Leader>w/ :vsp<CR>
nnoremap <Leader>w- :sp<CR>

" New Tab
nnoremap <Leader>tn :tabe <CR>

" New File
nnoremap <Leader>nf :new <CR>

" File Save
nnoremap <Leader>fs :w<CR>
nnoremap <Leader>fas :wa<CR>

" File Open
nnoremap <Leader>fe :e 

" Token Go
nmap <Leader>gg <Plug>(coc-definition)
nmap <Leader>gy <Plug>(coc-type-definition)
nmap <Leader>gi <Plug>(coc-implementation)
nmap <Leader>gr <Plug>(coc-references)
nmap <leader>er <Plug>(coc-rename)

" Force Quit
nnoremap <Leader>qQ :qa!<CR>

nnoremap <Leader>bd :bdelete<CR>
nnoremap <Leader>wq :bdelete<CR>
nnoremap <Leader>bn :enew<CR>
nnoremap <Leader>bl :buffers<CR>:buffer<Space>

nnoremap <Leader>` :tabe<CR>:te<CR>a

nnoremap <Leader>pt :NERDTree<CR>
nnoremap <Leader>pf :CtrlP<CR>


" Note taking - add timestamp
nnoremap <Leader>nn :put =strftime('%T')<CR>A<Space>-<Space>

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

map Q <Nop>
