local plug = require('.plug')

local exports = {}

local languagePlugins = {
  "all" = {
    'w0rp/ale',
    'neovim/nvim-lspconfig',
    'sheerun/vim-polyglot',
    { 'neoclide/coc.nvim', { branch = 'release' } }
  },
  "yaml"   = { 'stephpy/vim-yaml' },
  "rust"   = { 'rust-lang/rust.vim' },
  "kotlin" = { 'udalov/kotlin-vim' },
  "scss"   = { 'cakebaker/scss-syntax.vim' },
  "c#"     = { 'OmniSharp/omnisharp-vim' },
  "java"   = { 'mfussenegger/nvim-jdtls' },
  "c++" = { 'bfrg/vim-cpp-modern', 'vhdirk/vim-cmake' },
  "lua" = {
    'nvim-lua/plenary.nvim',
    'rafcamlet/nvim-luapad',
    'svermeulen/vimpeccable'
  },
  "javascript" = {
    'othree/yajs.vim',
    'othree/es.next.syntax.vim',
    'mustache/vim-mustache-handlebars'
  },
  "typescript" = {
    'HerringtonDarkholme/yats.vim',
    'peitalin/vim-jsx-typescript',
    'leafgarland/typescript-vim'
  },
  "rescript" = {
    { 'rescript-lang/vim-rescript', { tag = 'v2.1.0' } }
  },
  "golang" = {
    { 'fatih/vim-go', { ["do"] = ':GoUpdateBinaries' } }
  },
  "toml" = {
    { 'cespare/vim-toml', { branch = 'main' } }
  }
}

local utilities = {
  "wakatime" = 'wakatime/vim-wakatime'
}

local defaultUtils = {
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
  'tpope/vim-dispatch'
}

function exports.minimalThemes()
  self.themes = { 'dracula/vim', 'yuttie/comfortable-motion.vim' }
end

function exports.allThemes()
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
    { 'sonph/onehalf', { rtp = 'vim/' } },
    { 'sindresorhus/focus', { rtp = 'vim' } }
  }
end

function exports.languages(langs)
  installAll(languages.all)
  mapInstall(languagePlugins, langs)
end

function exports.utilities(utils)
  mapInstall(utilities, utils)
  installAll(defaultUtils)
end 

local function mapInstall(tbl, arg)
  if len(arg) == 0 then
    installAll(tbl)
    return
  end

  for iarg, item in pairs(arg) do
    for k, v in pairs(tbl) do
      if item == k then
        plug:add(v)
        break
      end
    end
  end
end


local function installAll(tbl)
  for _, v in pairs(tbl) do
    plug:add(v)
  end
end

return exports
