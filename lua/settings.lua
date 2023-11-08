local themes  = require('themes')
local options = require('options')

local columns = vim.go.columns;

local nerdTreeWidth;

if columns > 160 then
  nerdTreeWidth = 50;
elseif columns > 150 then
  nerdTreeWidth = 45;
else
  nerdTreeWidth = 40;
end

options.vars {
  mapleader = "<Space>",
}

options.set {
  omnifunc      = 'syntaxcomplete#Complete',
  confirm       = true,

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
  list          = true,
  wrap          = false,
  linebreak     = true,
  -- listchars     = "tab:  ,trail:·,lead:·,multispace:·",
  listchars     = "tab:  ,trail:·,lead:·",

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

  -- CtrlP
  ctrlp_custom_ignore = 'node_modules|DS_Store|.git',
  ctrlp_user_command = { '.git', 'cd %s && git ls-files -co --exclude-standard' },
  ctrlp_root_markers = {
    "angular.json",
    "package.json",
  },

  -- CoC (Command over Completion)
  coc_global_extensions = {
    "coc-html",
    "coc-eslint",
    "coc-emmet",
    "coc-yaml",
    "coc-tsserver",
    "coc-tslint-plugin",
    "coc-swagger",
    "coc-json",
    "coc-go",
    "coc-css",
    "coc-angular",
    "coc-lua",
    "coc-swagger",
  },

  -- NERDTree
  NERDTreeWinSize         = nerdTreeWidth,
  NERDTreeMouseMode       = 2,
  NERDTreeShowHidden      = 0,
  NERDTreeShowLineNumbers = 1,
  NERDTreeShowBookmarks   = 1,
  NERDTreeIgnore = {
    '__pycache__',
    'CMakeFiles',
    'CMakeCache',
    'cmake_install\\.cmake',
    '\\.a$',
    'node_modules',
  },

  -- ALE
  ale_fixers = {
    typescript = { "eslint" },
    javascript = { "eslint" },
    go         = { "gopls" },
  },

  ale_linters_ignore = {
    json = { "eslint" },
  },

  -- Emmet
  user_emmet_settings = {
    javascript = { extends = 'jsx' },
    typescript = { extends = 'jsx' },
  },

  python_host_prog  = '/usr/bin/python',
  python3_host_prog = '/usr/bin/python3',
}

themes.dark:apply()

