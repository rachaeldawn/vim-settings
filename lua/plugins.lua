local plug = require('rdawn.plug')

plug:start("~/.local/share/nvim/bundle")

-- Themes
plug:add {
  'dracula/vim',
  'vim-airline/vim-airline-themes',
  'rakr/vim-two-firewatch',
  'reedes/vim-colors-pencil',
  'rakr/vim-one',
  'vim-scripts/greenvision',
  'vim-scripts/summerfruit256.vim',
  'NLKNguyen/papercolor-theme',
  'chriskempson/base16-vim',
  'vim-scripts/reloaded.vim',
  'xolox/vim-colorscheme-switcher',
  'jacoborus/tender.vim',
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
  'folke/trouble.nvim',
  'nvim-telescope/telescope.nvim',
  'nvim-treesitter/nvim-treesitter',
  -- zig language support
  'ziglang/zig.vim',
  'neoclide/jsonc.vim',
  { 'nvim-treesitter/nvim-treesitter', { ["do"] = ':TSUpdate'} },
  -- 'tree-sitter/tree-sitter-css',
  -- 'serenadeai/tree-sitter-scss',
  -- 'tree-sitter/tree-sitter-go',
  -- 'tree-sitter/tree-sitter-typescript',
  -- 'tree-sitter/tree-sitter-javascript',
  -- 'ikatyang/tree-sitter-yaml',
  -- 'MunifTanjim/tree-sitter-lua',

  { 'rescript-lang/vim-rescript', { tag = 'v2.1.0' } },
  { 'fatih/vim-go', { ["do"] = ':GoUpdateBinaries' } },
  { 'neoclide/coc.nvim', { branch = 'release' } },
  { 'cespare/vim-toml', { branch = 'main' } },
}

-- Utilities
plug:add {
  'jbyuki/instant.nvim',
  'airblade/vim-gitgutter',
  'mkitt/tabline.vim',
  'mattn/emmet-vim',
  'junegunn/vim-easy-align',
  'ctrlpvim/ctrlp.vim',
  'vim-airline/vim-airline',
  'vim-airline/vim-airline-themes',
  'preservim/nerdtree',
  'tpope/vim-abolish',
  'jiangmiao/auto-pairs',
  'xolox/vim-misc',
  'tpope/vim-dispatch',
  'svermeulen/vimpeccable',
  'rafcamlet/nvim-luapad',
  'wakatime/vim-wakatime',
  'preservim/nerdcommenter',
  'junegunn/goyo.vim',
  { 'sonph/onehalf', { rtp = 'vim/' } }
}

plug:finish()
