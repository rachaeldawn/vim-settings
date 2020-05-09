syntax on

" let theme = 'retro-term'
let theme = 'dark'
" let theme = 'light'

set termguicolors

" light theme
if theme == 'light'
  set t_Co=256
  set background=light
  colorscheme base16-google-light
elseif theme == 'dark'
" dark theme
  colors dracula
elseif theme == 'retro-dark'
  colors dracula
  let g:ycm_enable_diagnostic_highlighting = 0
  let g:ale_set_highlights = 0
elseif theme == 'leet'
  set background=dark
  colorscheme base16-greenscreen
  let g:airline_theme='atomic'
elseif theme == 'retro-term'
  set t_Co=256
  colorscheme base16-black-metal
  let g:airline_theme='base16_eighties'
  let g:ycm_enable_diagnostic_highlighting = 0
  let g:ale_set_highlights = 0
endif
