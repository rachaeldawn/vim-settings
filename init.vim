set nocompatible
filetype off

if has('nvim')
  so $HOME/.config/nvim/keymaps.vim
  lua require 'plugins'
  lua require 'settings'
  lua require 'shortcuts'
  lua require 'functions'
  lua require 'boot'
endif
