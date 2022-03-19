local vimp = require('vimp')

vim.g.mapleader = " "

vimp.nnoremap("<F1>", ":NERDTree<CR>")
vimp.nnoremap("<F2>", ":NERDTree %<CR>")
vimp.nnoremap("<F3>", ":e %:p:h")

vimp.nnoremap("<Leader>ef", ":CocFix<CR>")
vimp.nnoremap("<Leader>lf", ":ALEFix<CR>")
vimp.nnoremap("<Leader>of", ":!dolphin %:p:h & disown<CR>")

vimp.nnoremap(";", ":buffers<CR>:b<Space>")
vimp.nnoremap("<C-;>", ";buffers<CR>;bd<Space>")
vimp.nnoremap("<Right>", ":cnext<CR>")
vimp.nnoremap("<Left>", ":cprev<CR>")
vimp.nnoremap("<Leader>k", ":call comfortable_motion#flick(-100)<CR>")
vimp.nnoremap("<Leader>j", ":call comfortable_motion#flick(100)<CR>")

-- Tab close
vimp.nnoremap("<Leader>td", ":tabc<CR>")

--  Tab Edit
vimp.nnoremap("<Leader>te", ":tabe")

--  Window Close
vimp.nnoremap("<Leader>wd", ":close<CR>")
vimp.nnoremap("<Leader>wl", "<C-W>l")
vimp.nnoremap("<Leader>wh", "<C-W>h")
vimp.nnoremap("<Leader>wj", "<C-W>j")
vimp.nnoremap("<Leader>wk", "<C-W>k")
vimp.nnoremap("<Leader>w/", ":vsp<CR>")
vimp.nnoremap("<Leader>w-", ":sp<CR>")

-- New Tab
vimp.nnoremap("<Leader>tn", ":tabe <CR>")

-- New File
vimp.nnoremap("<Leader>nf", ":new <CR>")

-- File Save
vimp.nnoremap("<Leader>fs", ":w<CR>")
vimp.nnoremap("<Leader>fas", ":wa<CR>")

-- File Open
vimp.nnoremap("<Leader>fe", ":e ")

-- Token Go
vimp.nmap("<Leader>gg", "<Plug>(coc-definition)")
vimp.nmap("<Leader>gy", "<Plug>(coc-type-definition)")
vimp.nmap("<Leader>gi", "<Plug>(coc-implementation)")
vimp.nmap("<Leader>gr", "<Plug>(coc-references)")
vimp.nmap("<Leader>er", "<Plug>(coc-rename)")

-- Force Quit
vimp.nnoremap("<Leader>qQ", ":qa!<CR>")

vimp.nnoremap("<Leader>bd", ":bdelete<CR>")
vimp.nnoremap("<Leader>wq", ":bdelete<CR>")
vimp.nnoremap("<Leader>bn", ":enew<CR>")
vimp.nnoremap("<Leader>bl", ":buffers<CR>:buffer<Space>")

vimp.nnoremap("<Leader>`", ":tabe<CR>:te<CR>a")
vimp.nnoremap("<Leader><Leader>", ":")

-- For command, check the global vars in settings.lua
vimp.nnoremap("<Leader>pf", ":CtrlP .<CR>")


vimp.nnoremap("<Leader>mm", ":marks<CR>")
vimp.nnoremap("<Leader>md", ":<C-U>marks<CR>:delm<Space>")
vimp.nnoremap("<Leader>mg", ":<C-U>marks<CR>:normal! `")

vimp.nnoremap("<Leader>rr", ":!<Space>")
vimp.nnoremap("<Leader>rh", ":%!<Space>")


-- Note taking - add timestamp
vimp.nnoremap("<Leader>nn", ":put =strftime('%T')<CR>A<Space>-<Space>")

vimp.map("Q", "<Nop>")

vim.cmd[[

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

" Align GitHub-flavored Markdown tables
au FileType markdown vmap <Leader><Bslash> :EasyAlign*<Bar><Enter>


" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

]]
