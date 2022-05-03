local themes = require('themes')
local options = require('options')
local todo = require('todo-comments')

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
  NERDTreeWinSize         = 60,
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
    typescript = {"tslint"},
    scss       = {"prettier"},
    css        = {"prettier"},
    html       = {"prettier"},
    vue        = {"eslint"},
  },

  -- Emmet
  user_emmet_settings = {
    javascript = { extends = 'jsx' },
    typescript = { extends = 'jsx' },
  },

  python_host_prog  = '/usr/bin/python',
  python3_host_prog = '/usr/bin/python3',
}

todo.setup {
  signs         = true, -- show icons in the signs column
  sign_priority = 8, -- sign priority
  keywords = {
    FIX = {
      icon = "🔨",
      color = "error",
      alt = {
        "FIXME",
        "BUG",
        "FIXIT",
        "ISSUE",
      },
    },

    TODO = {
      icon  = "🟩",
      color = "info",
    },

    HACK = {
      icon  = "🤢",
      color = "warning",
    },

    WARN = {
      icon  = "❗️",
      color = "warning",
      alt = {
        "WARNING",
        "XXX",
      },
    },

    PERF = {
      icon = "⏱ ",
      alt = {
        "OPTIM",
        "PERFORMANCE",
        "OPTIMIZE",
      },
    },

    NOTE = {
      icon = "📝",
      color = "hint",
      alt = { "INFO" },
    },

    QUESTION = {
      icon  = "❓",
      color = "info",
      alt = {
        "WHY",
        "HOW",
        "WHAT",
        "INVESTIGATE",
      }
    }
  },

  merge_keywords = true, -- when true, custom keywords will be merged with the defaults
  -- highlighting of the line containing the todo comment
  -- * before: highlights before the keyword (typically comment characters)
  -- * keyword: highlights of the keyword
  -- * after: highlights after the keyword (todo text)

  highlight = {
    before        = "", -- "fg" or "bg" or empty
    keyword       = "wide", -- "fg", "bg", "wide" or empty. (wide is the same as bg, but will also highlight surrounding characters)
    after         = "fg", -- "fg" or "bg" or empty
    pattern       = [[.*<(KEYWORDS)\s*:]], -- pattern or table of patterns, used for highlightng (vim regex)
    comments_only = true, -- uses treesitter to match keywords in comments only
    max_line_len  = 400, -- ignore lines longer than this
    exclude       = {}, -- list of file types to exclude highlighting
  },

  -- list of named colors where we try to extract the guifg from the
  -- list of hilight groups or use the hex color if hl not found as a fallback
  colors = {
    error   = { "DiagnosticError", "ErrorMsg", "#DC2626" },
    warning = { "DiagnosticWarning", "WarningMsg", "#FBBF24" },
    info    = { "DiagnosticInfo", "#2563EB" },
    hint    = { "DiagnosticHint", "#10B981" },
    default = { "Identifier", "#7C3AED" },
  },

  search = {
    command = "rg",
    args = {
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
    },

    -- regex that will be used to match keywords.
    -- don't replace the (KEYWORDS) placeholder
    pattern = [[\b(KEYWORDS):]], -- ripgrep regex
    -- pattern = [[\b(KEYWORDS)\b]], -- match without the extra colon. You'll likely get false positives
  },
}

themes.dark:apply()

