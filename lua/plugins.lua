local plug = require('rdawn.plug')

plug:start("~/.config/nvim/bundle")

-- Themes
plug:add {
  'dracula/vim',
  'vim-airline/vim-airline-themes',
  'rakr/vim-two-firewatch',
  'reedes/vim-colors-pencil',
  'rakr/vim-one',
  'rakr/vim-colors-rakr',
  'vim-scripts/greenvision',
  'vim-scripts/summerfruit256.vim',
  'NLKNguyen/papercolor-theme',
  'chriskempson/base16-vim',
  'vim-scripts/reloaded.vim',
  'xolox/vim-colorscheme-switcher',
  'jacoborus/tender.vim',
  'lucy/term.vim',
  'joshdick/onedark.vim',
  'noahfrederick/vim-hemisu',
  'yuttie/comfortable-motion.vim',
  { 'sindresorhus/focus', { rtp = 'vim' } }
}

-- Language Supports
plug:add {
  'w0rp/ale',
  'neovim/nvim-lspconfig',
  'vhdirk/vim-cmake',
  'cakebaker/scss-syntax.vim',
  'othree/yajs.vim',
  'othree/es.next.syntax.vim',
  'bfrg/vim-cpp-modern',
  'stephpy/vim-yaml',
  'OmniSharp/omnisharp-vim',
  'rust-lang/rust.vim',
  'udalov/kotlin-vim',
  'leafgarland/typescript-vim',
  'peitalin/vim-jsx-typescript',
  'HerringtonDarkholme/yats.vim',
  'nvim-lua/plenary.nvim',

  { 'rescript-lang/vim-rescript', { tag = 'v2.1.0' } },
  { 'fatih/vim-go', { ["do"] = ':GoUpdateBinaries' } },
  { 'neoclide/coc.nvim', { branch = 'release' } },
  { 'cespare/vim-toml', { branch = 'main' } },
}

-- Utilities
plug:add {
  'airblade/vim-gitgutter',
  'mkitt/tabline.vim',
  'mattn/emmet-vim',
  'junegunn/vim-easy-align',
  'ctrlpvim/ctrlp.vim',
  'vim-airline/vim-airline',
  'preservim/nerdtree',
  'tpope/vim-abolish',
  'jiangmiao/auto-pairs',
  'xolox/vim-misc',
  'tpope/vim-dispatch',
  'svermeulen/vimpeccable',
  'rafcamlet/nvim-luapad',
  { 'sonph/onehalf', { rtp = 'vim/' } }
}

plug:finish()
