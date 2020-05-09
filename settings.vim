" Visuals
set encoding=utf-8
set shortmess=I
set colorcolumn=100
set tabstop=2
set hidden
set expandtab
set shiftwidth=2
set smartindent
set indentexpr=
set number
set guioptions=a
set guifont=Fira\ Code\ Medium\ 10
set showmatch
set ignorecase
set nohlsearch
set clipboard=unnamedplus
set termguicolors
set backspace=indent,eol,start
set mouse=a
set wrap!
set list
set nowrap
set wildignore+=*.pyc,*.o,*.obj,*.svn,*.swp,*.class,*.hg,*.DS_Store,*.min.*      
set encoding=utf8
set ff=unix
set wildmode=longest,list
set scrolloff=3
let mapleader = "\<Space>"

" Ale linting
let g:ale_fixers = {
\    'typescript': ['prettier', 'tslint'],
\    'vue': ['eslint'],
\    'scss': ['prettier'],
\    'html': ['prettier'],
\    'cs': ['OmniSharp']
\}

" NERDTree
let g:NERDTreeMouseMode=2
let g:NERDTreeIgnore=[ '\~$', '__pycache__', 'CMakeFiles', 'CMakeCache', 'cmake_install.cmake', '\.a$', 'Makefile' ]
let g:NERDTreeWinSize=40

"YouCompleteMe
if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif

let g:ycm_semantic_triggers['typescript'] = ['.']
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_max_num_candidates = 25
let g:ycm_auto_trigger = 1
let g:ycm_add_preview_to_completeopt = 1

set omnifunc=syntaxcomplete#Complete

let g:OmniSharp_server_stdio = 0
let g:OmniSharp_server_use_mono = 1

" ctrlP settings
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
