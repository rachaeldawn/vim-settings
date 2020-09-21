syntax on

" let theme = 'retro-term'
let theme = 'dark'
" let theme = 'light'
" let theme = 'monokai'
" let theme = 'flat'

set termguicolors

" light theme
if theme == 'light'
  set t_Co=256
  set background=light
  colorscheme base16-google-light
elseif theme == 'monokai'
  colors base16-monokai
elseif theme == 'dark'
" dark theme
  colors dracula
elseif theme == 'retro-dark'
  colors dracula
  let g:ycm_enable_diagnostic_highlighting = 0
  let g:ale_set_highlights = 0
  let g:ycm_key_invoke_completion = @s
elseif theme == 'leet'
  colorscheme base16-greenscreen
  let g:airline_theme='atomic'
elseif theme == 'flat'
  colorscheme one
elseif theme == 'retro-term'
  set t_Co=256
  colorscheme base16-black-metal
  let g:airline_theme='base16_eighties'
  let g:ycm_enable_diagnostic_highlighting = 0
  let g:ale_set_highlights = 0
endif
