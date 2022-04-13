let g:mapleader = " "

nnoremap <F1> :NERDTree<CR>
nnoremap <F2> :NERDTree %<CR>
nnoremap <F3> :e %:p:h

nnoremap <Leader>ef :CocFix<CR>
nnoremap <Leader>lf :ALEFix<CR>
nnoremap <Leader>of :!dolphin %:p:h & disown<CR>

nnoremap ; :buffers<CR>:b<Space>
nnoremap <C-;> ;buffers<CR>;bd<Space>
nnoremap <Right> :cnext<CR>
nnoremap <Left> :cprev<CR>
nnoremap <Leader>k :call comfortable_motion#flick(-100)<CR>
nnoremap <Leader>j :call comfortable_motion#flick(100)<CR>

nnoremap <PageUp> :call comfortable_motion#flick(-100)<CR>
nnoremap <PageDown> :call comfortable_motion#flick(100)<CR>

"" Tab close
nnoremap <Leader>td :tabc<CR>

""  Tab Edit
nnoremap <Leader>te :tabe

""  Window Close
nnoremap <Leader>wd :close<CR>
nnoremap <Leader>wl <C-W>l
nnoremap <Leader>wh <C-W>h
nnoremap <Leader>wj <C-W>j
nnoremap <Leader>wk <C-W>k
nnoremap <Leader>w/ :vsp<CR>
nnoremap <Leader>w- :sp<CR>

"" New Tab
nnoremap <Leader>tn :tabe <CR>

"" New File
nnoremap <Leader>nf :new <CR>

"" File Save
nnoremap <Leader>fs :w<CR>
nnoremap <Leader>fas :wa<CR>

"" File Open
nnoremap <Leader>fe :e 


"" Force Quit
nnoremap <Leader>qQ :qa!<CR>

nnoremap <Leader>bd :bdelete<CR>
nnoremap <Leader>wq :bdelete<CR>
nnoremap <Leader>bn :enew<CR>
nnoremap <Leader>bl :buffers<CR>:buffer<Space>

nnoremap <Leader>` :tabe<CR>:te<CR>a
nnoremap <Leader><Leader> :

"" For command, check the global vars in settings.lua
nnoremap <Leader>pf :CtrlP .<CR>


nnoremap <Leader>mm :marks<CR>
nnoremap <Leader>md :<C-U>marks<CR>:delm<Space>
nnoremap <Leader>mg :<C-U>marks<CR>:normal! `

nnoremap <Leader>rr :!<Space>
nnoremap <Leader>rh :%!<Space>


"" Note taking - add timestamp
nnoremap <Leader>nn :put =strftime('%T')<CR>A<Space>-<Space>

map Q <Nop>

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<C-h>"



