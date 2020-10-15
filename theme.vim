syntax on

" let theme = 'retro-term'
let theme = 'dark'
" let theme = 'light'
" let theme = 'monokai'
" let theme = 'flat'

let use_256 = 0
let disable_ycm = 0
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
  colorscheme base16-black-metal
  let g:airline_theme='base16_eighties'
  use_256 = 1
  disable_ycm = 1
endif

if use_256 == 1
  set t_Co=256
else
endif

if disable_ycm == 1
  let g:ycm_enable_diagnostic_highlighting = 0
  let g:ale_set_highlights = 0
  let g:ycm_key_invoke_completion = @s
endif

if light == 1
  set background=light
endif
