local themes = require('themes')
local options = require('options')

options.vars {
  mapleader = "<Space>",
}

options.set {
  omnifunc = 'syntaxcomplete#Complete',
  confirm = true,

  -- Visuals
  encoding      = "utf-8",
  shortmess     = "Ic",
  colorcolumn   = "100,120,140,160",

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
  termguicolors = true,
  backspace     = "indent,eol,start",
  mouse         = "a",

  wildmode      = "longest,list",
  statusline    = vim.o["statusline"] .. "%F",
  signcolumn    = "yes",
}

options.globalVars {
  wildignore = [[ *.pyc,*.o,*.obj,*.svn,*.swp,*.class,*.hg,*.DS_Store,*.min.* ]],
  ctrlp_custom_ignore = 'node_modules|DS_Store|.git',
  ctrlp_user_command = { '.git', 'cd %s && git ls-files -co --exclude-standard' },
  ctrlp_root_markers = {
    "angular.json",
    "package.json",
  },

  -- NERDTree
  NERDTreeWinSize         = 40,
  NERDTreeMouseMode       = 2,
  NERDTreeShowHidden      = 0,
  NERDTreeShowLineNumbers = 1,

  NERDTreeIgnore = {
    '__pycache__',
    'CMakeFiles',
    'CMakeCache',
    'cmake_install\\.cmake',
    '\\.a$',
    'node_modules',
  },

  ale_fixers = {
    typescript = {"tslint"},
    scss       = {"prettier"},
    html       = {"prettier"},
    vue        = {"eslint"},
  },

  user_emmet_settings = {
    javascript = { extends = 'jsx' },
    typescript = { extends = 'jsx' },
  },

  python_host_prog  = '/usr/bin/python',
  python3_host_prog = '/usr/bin/python3',
}

themes.dark:apply()

