set nocompatible
filetype off

set rtp+=$HOME/.config/nvim/bundle/Vundle.vim

" Key Mappings
if (!exists('g:vscode'))
  so $HOME/.config/nvim/plugins.vim
  so $HOME/.config/nvim/settings.vim
  so $HOME/.config/nvim/keymaps.vim
  so $HOME/.config/nvim/abbrev.vim
  so $HOME/.config/nvim/theme.vim
else
  so $HOME/.config/nvim/settings.vim
endif
