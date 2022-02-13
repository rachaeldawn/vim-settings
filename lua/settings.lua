local themes = require('themes')
local options = require('options')

options.vars {
  mapleader = "<Space>",
}

options.set {
  omnifunc = 'syntaxcomplete#Complete'
}

options.globalVars {
  wildignore = [[ *.pyc,*.o,*.obj,*.svn,*.swp,*.class,*.hg,*.DS_Store,*.min.* ]],
  ctrlp_custom_ignore = 'node_modules|DS_Store|git',
  ctrlp_user_command = { '.git', 'cd %s && git ls-files -co --exclude-standard' },
}


options.set {
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
  -- NERDTree
  nerdTreeWinSize   = options.newMapped("g:NERDTreeWinSize", 40),
  nerdTreeMouseMode = options.newMapped("g:NERDTreeMouseMode", 2),

  nerdTreeIgnore = options.newMapped("g:NERDTreeIgnore"):setValue{
    '~$',
    '__pycache__',
    'CMakeFiles',
    'CMakeCache',
    'cmake_install.cmake',
    '.a$',
    'node_modules',
  },

  aleFixers = options.newMapped("g:ale_fixers"):setValue{
    typescript = {"tslint"},
    scss       = {"prettier"},
    html       = {"prettier"},
    vue        = {"eslint"},
  },

  emmet = options.newMapped("g:user_emmet_settings"):setValue{
    javascript = { extends = 'jsx' },
    typescript = { extends = 'jsx' },
  },

  omnisharp = {
    stdio   = options.newMapped("g:OmniSharp_server_stdio", 0),
    useMono = options.newMapped("g:OmniSharp_server_use_mono", 1),
  },

  pySettings = {
    hostProg  = options.newMapped("g:python_host_prog", '/usr/bin/python'),
    host3Prog = options.newMapped("g:python3_host_prog", '/usr/bin/python3'),
  },
}

themes.dark:apply()

