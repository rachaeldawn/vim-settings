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

nnoremap <Leader>we/ :vsp<BAR>ene
nnoremap <Leader>we- :sp<BAR>ene

"" New File
nnoremap <Leader>nf :new <CR>

"" File Save
nnoremap <Leader>fs :w<CR>
nnoremap <Leader>fas :wa<CR>

"" File Open
nnoremap <Leader>fe :e 

"" Force Quit
nnoremap QQ :qa<CR>

"" --- Delete things
nnoremap <Leader>db :bdelete<CR>
nnoremap <Leader>dm :<C-U>marks<CR>:delm<Space>

"" --- Create things
nnoremap <Leader>nb :enew<CR>
" create new tab
nnoremap <Leader>nt :tabe <CR>

nnoremap <Leader>wq :bdelete<CR>
nnoremap <Leader>bl :buffers<CR>:buffer<Space>

nnoremap <Leader>` :ene<BAR>:te<CR>a
nnoremap <Leader><Leader> :

"" For command, check the global vars in settings.lua
nnoremap <Leader>pf :CtrlP .<CR>

nnoremap <Leader>mm :marks<CR>
nnoremap <Leader>gm :<C-U>marks<CR>:normal! `
nnoremap <Leader>; :<C-U>marks<CR>:normal! `

nnoremap <Leader>rr :!<Space>
nnoremap <Leader>rh :!<Space>
nnoremap <Leader>br :%!<Space>


"" Note taking - add timestamp
nnoremap <Leader>nn :put =strftime('%T')<CR>A<Space>-<Space>

map Q <Nop>

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<C-h>"



