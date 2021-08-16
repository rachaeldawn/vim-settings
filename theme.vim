syntax on

" let theme = 'retro-term'
let theme = 'dark'
" let theme = 'light'
" let theme = 'monokai'
" let theme = 'flat'
" let theme = 'green'

let light = 0

" light theme
if theme == 'light'
  colors one
elseif theme == 'monokai'
  colors base16-monokai
elseif theme == 'dark'
" dark theme
  colors dracula
elseif theme == 'green'
  colorscheme greenvision
  let g:airline_theme='atomic'
elseif theme == 'flat'
  colorscheme one
elseif theme == 'retro-term'
  " themes that work are:
  " colorscheme PaperColor
  " colorscheme murphy
  " colorscheme greenvision
  " colorscheme base16-seti
  colorscheme PaperColor
  " colorscheme base16-harmonic-dark
  " colors default
  let g:ctrlp_buffer_func = { 'enter': 'BrightHighlightOn', 'exit':  'BrightHighlightOff', }
  set noshowmatch
  au BufEnter :NoMatchParent<CR>
endif

function BrightHighlightOn()
  hi CursorLine guibg=darkred
endfunction

function BrightHighlightOff()
  hi CursorLine guibg=#191919
endfunction

if (has("termguicolors"))
  set termguicolors
endif

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

if light == 1
  set background=light
else
  set background=dark
endif

" Enable true color 启用终端24位色
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
