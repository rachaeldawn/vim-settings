options      = require('options')
OptionSetter = require('options.setter')
Mapped       = require('options.mapped')

print (OptionSetter.apply)

-- wtf is this?
vim.api.nvim_buf_set_option(0, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

options.global{
  mapleader = "<Space>",
  wildIgnores = Mapped:new("wildignores"):setValue{
    "*.pyc",
    "*.o",
    "*.obj",
    "*.svn",
    "*.swp",
    "*.class",
    "*.hg",
    "*.DS_Store",
    "*.min.*",
  },

  guioptions    = "a",
}

options.vim{
  -- Visuals
  encoding      = "utf-8",
  shortmess     = "Ic",
  colorcolumn   = "80,100,120,140,160",

  tabstop       = 2,
  shiftwidth    = 2,
  scrolloff     = 6,
  indentexpr    = "",
  expandtab     = true,
  smartindent   = true,
  number        = true,
  showmatch     = true,
  ignorecase    = true,
  hlsearch      = false,
  list          = false,
  wrap          = false,
  linebreak     = true,

  guifont       = "Fira Code Medium 10",
  clipboard     = "unnamedplus",
  termguicolors = false,
  backspace     = "indent,eol,start",
  mouse         = "a",

  wildmode      = "longest,list",
  statusline    = vim.o["statusline"] .. "%F",
  signcolumn    = "yes",
}

options.global{
  -- NERDTree
  nerdTreeWinSize   = Mapped:new("g:NERDTreeWinSize", 40),
  nerdTreeMouseMode = Mapped:new("g:NERDTreeMouseMode", 2),

  nerdTreeIgnore = Mapped:new("g:NERDTreeIgnore"):setValue{
    '~$',
    '__pycache__',
    'CMakeFiles',
    'CMakeCache',
    'cmake_install.cmake',
    '.a$',
    'node_modules',
  },

  aleFixers = Mapped:new("g:ale_fixers"):setValue{
    typescript = {"tslint"},
    scss       = {"prettier"},
    html       = {"prettier"},
    vue        = {"eslint"},
  },

  emmet = Mapped:new("g:user_emmet_settings"):setValue{
    javascript = { extends = 'jsx' },
    typescript = { extends = 'jsx' },
  },

  omnisharp = {
    stdio   = Mapped:new("g:OmniSharp_server_stdio", 0),
    useMono = Mapped:new("g:OmniSharp_server_use_mono", 1),
  },

  pySettings = {
    hostProg  = Mapped:new("g:python_host_prog", '/usr/bin/python'),
    host3Prog = Mapped:new("g:python3_host_prog", '/usr/bin/python3'),
  },
}


-- How tf do I set this?
-- omnifunc=syntaxcomplete#Complete
