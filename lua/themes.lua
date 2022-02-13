local options = require('options')
local Theme   = require('rdawn.theme')

local module = {}

module.dark    = Theme:new("dracula")
module.monokai = Theme:new("base16-monokai")
module.green   = Theme:new("greenvision")
module.flat    = Theme:new("one")
module.green   = Theme:new("greenvision"):withAirline("atomic")
module.retro   = Theme:new("PaperColor")

function module.retro:setup()
  local enter = 'BrightHighlightOn'
  local exit = 'BrightHighlightOff'

  options.vim{showmatch = false}
  options.global{
    ctrlp = options.newMapped("g:ctrlp_buffer_func", { enter = enter, exit = exit }),
  }

  vim.cmd [[ au BufEnter :NoMatchParent<CR> ]]
end

function BrightHighlightOn()
  vim.cmd [[ hi CursorLine guibg=darkred ]]
end

function BrightHighlightOff()
  vim.cmd [[ hi CursorLine guibg=#191919 ]]
end

vim.opt.termguicolors = true
options.global{termguicolors = true}

vim.cmd [[
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  " Enable true color 启用终端24位色
  if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
  else
    echo 'No +termguicolors support'
  endif
]]


return module
