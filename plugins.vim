" call vundle#begin("~/.config/nvim/bundle")
call plug#begin("~/.config/nvim/bundle")
" Plug 'VundleVim/Vundle.vim'

  " Vim Utilities
  Plug 'airblade/vim-gitgutter'
  Plug 'mkitt/tabline.vim'
  Plug 'mattn/emmet-vim'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'preservim/nerdtree'
  Plug 'tpope/vim-abolish'
  Plug 'jiangmiao/auto-pairs'
  Plug 'xolox/vim-misc'

  " Themes
  Plug 'dracula/vim'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'sonph/onehalf', {'rtp': 'vim/'}
  Plug 'rakr/vim-two-firewatch'
  Plug 'reedes/vim-colors-pencil'
  Plug 'rakr/vim-one'
  Plug 'rakr/vim-colors-rakr'
  Plug 'vim-scripts/greenvision'
  Plug 'vim-scripts/summerfruit256.vim'
  Plug 'NLKNguyen/papercolor-theme'
  Plug 'chriskempson/base16-vim'
  Plug 'vim-scripts/reloaded.vim'
  Plug 'xolox/vim-colorscheme-switcher'
  Plug 'jacoborus/tender.vim'
  Plug 'lucy/term.vim'
  Plug 'joshdick/onedark.vim'
  Plug 'noahfrederick/vim-hemisu'
  Plug 'sindresorhus/focus', { 'rtp': 'vim' }

  " Pretty Plugs
  Plug 'yuttie/comfortable-motion.vim'

  " Typescript Plugs
  Plug 'neoclide/coc.nvim', { 'branch': 'release' }
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'

  " DOM and Typescript highlight extras
  Plug 'HerringtonDarkholme/yats.vim'

  " Extra languages
  Plug 'cakebaker/scss-syntax.vim'
  Plug 'othree/yajs.vim'
  Plug 'othree/es.next.syntax.vim'
  Plug 'bfrg/vim-cpp-modern'
  Plug 'cespare/vim-toml', { 'branch': 'main' }
  Plug 'stephpy/vim-yaml'
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  Plug 'OmniSharp/omnisharp-vim'
  Plug 'rust-lang/rust.vim'
  Plug 'rescript-lang/vim-rescript', { 'tag': 'v2.1.0' }
  Plug 'junegunn/vim-easy-align'

  Plug 'udalov/kotlin-vim'

  Plug 'wakatime/vim-wakatime'
  Plug 'vhdirk/vim-cmake'
  Plug 'tpope/vim-dispatch'
  Plug 'w0rp/ale'

call plug#end()
