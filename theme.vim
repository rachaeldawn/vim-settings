syntax on

" let theme = 'retro-term'
let theme = 'dark'
" let theme = 'light'
" let theme = 'monokai'
" let theme = 'flat'

let light = 0

" light theme
if theme == 'light'
  colorscheme base16-google-light
elseif theme == 'monokai'
  colors base16-monokai
elseif theme == 'dark'
" dark theme
  colors dracula
elseif theme == 'leet'
  colorscheme base16-greenscreen
  let g:airline_theme='atomic'
elseif theme == 'flat'
  colorscheme one
elseif theme == 'retro-term'
  " themes that work are:
  " colorscheme PaperColor
  " colorscheme murphy
  colorscheme base16-solarflare
  " colorscheme base16-seti
  " colorscheme PaperColor
  " colorscheme base16-harmonic-dark
  let g:ctrlp_buffer_func = { 'enter': 'BrightHighlightOn', 'exit':  'BrightHighlightOff', }
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
endif

" Enable true color 启用终端24位色
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
