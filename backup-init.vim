set nocompatible
filetype off

" Key Mappings
if (!exists('g:vscode'))
  so $HOME/.config/nvim/plugins.vim
  so $HOME/.config/nvim/settings.vim
  so $HOME/.config/nvim/abbrev.vim
  so $HOME/.config/nvim/theme.vim
  so $HOME/.config/nvim/keymaps.vim
else
  so $HOME/.config/nvim/settings.vim
endif
