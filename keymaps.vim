nnoremap <F1> :NERDTree<CR>
nnoremap <F2> :NERDTree %<CR>
nnoremap <F3> :e %:p:h

nnoremap <Leader>ef :YcmCompleter FixIt<CR>
nnoremap <Leader>lf :ALEFix<CR>

nnoremap ; :buffers<CR>:b<Space>
nnoremap <Ctrl-;> ;buffers<CR>;bd<Space>
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

" Errors previous (vim)
nnoremap <Leader>ep :cprev<CR>

" documentation
nnoremap <Leader>ed :YcmCompleter GetDoc<CR>

nnoremap <Leader>er :YcmCompleter RefactorRename 

" Token Go
nnoremap <Leader>gg :YcmCompleter GoTo<CR>

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
