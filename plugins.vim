call vundle#begin("~/.config/nvim/bundle")
  Plugin 'VundleVim/Vundle.vim'

  " Vim Utilities
  Plugin 'airblade/vim-gitgutter'
  Plugin 'mkitt/tabline.vim'
  Plugin 'mattn/emmet-vim'
  Plugin 'ctrlpvim/ctrlp.vim'
  Plugin 'vim-airline/vim-airline'
  Plugin 'preservim/nerdtree'
  Plugin 'tpope/vim-abolish'
  Plugin 'jiangmiao/auto-pairs'
  Plugin 'xolox/vim-misc'

  " Themes
  Plugin 'dracula/vim'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'sonph/onehalf', {'rtp': 'vim/'}
  Plugin 'rakr/vim-two-firewatch'
  Plugin 'reedes/vim-colors-pencil'
  Plugin 'rakr/vim-one'
  Plugin 'rakr/vim-colors-rakr'
  Plugin 'vim-scripts/greenvision'
  Plugin 'vim-scripts/summerfruit256.vim'
  Plugin 'NLKNguyen/papercolor-theme'
  Plugin 'chriskempson/base16-vim'
  Plugin 'vim-scripts/reloaded.vim'
  Plugin 'xolox/vim-colorscheme-switcher'
  Plugin 'jacoborus/tender.vim'
  Plugin 'lucy/term.vim'
  Plugin 'joshdick/onedark.vim'
  Plugin 'noahfrederick/vim-hemisu'
  Plugin 'sindresorhus/focus'

  " Pretty plugins
  Plugin 'yuttie/comfortable-motion.vim'

  " Typescript plugins
  Plugin 'neoclide/coc.nvim'
  Plugin 'leafgarland/typescript-vim'
  Plugin 'peitalin/vim-jsx-typescript'

  " DOM and Typescript highlight extras
  Plugin 'HerringtonDarkholme/yats.vim'

  " Extra languages
  Plugin 'cakebaker/scss-syntax.vim'
  Plugin 'othree/yajs.vim'
  Plugin 'othree/es.next.syntax.vim'
  Plugin 'bfrg/vim-cpp-modern'
  Plugin 'cespare/vim-toml'
  Plugin 'stephpy/vim-yaml'
  Plugin 'fatih/vim-go'
  Plugin 'OmniSharp/omnisharp-vim'
  Plugin 'rust-lang/rust.vim'
  Plugin 'rescript-lang/vim-rescript'
  Plugin 'junegunn/vim-easy-align'

  Plugin 'wakatime/vim-wakatime'
  Plugin 'vhdirk/vim-cmake'
  Plugin 'tpope/vim-dispatch'
  Plugin 'w0rp/ale'

call vundle#end()
