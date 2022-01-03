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

vimp.nnoremap("<Leader>pf", ":CtrlP<CR>")


-- Note taking - add timestamp
vimp.nnoremap("<Leader>nn", ":put =strftime('%T')<CR>A<Space>-<Space>")

vimp.map("Q", "<Nop>")

vimp.inoremap({'expr'}, '<S-Tab>', function()
  if vim.fn.pumvisible() then
    return [[<C-p>]]
  end

  return [[<C-h>]]
end)

vimp.inoremap({'expr'}, '<Tab>', function()
  if vim.fn.pumvisible() then
    return [[<C-n>]]
  end

  return [[<C-h>]]
end)
