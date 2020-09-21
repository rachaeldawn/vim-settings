set nocompatible
filetype off

set rtp+=$HOME/.vim/bundle/Vundle.vim

" Key Mappings
if (!exists('g:vscode'))
  so $HOME/.vim/plugins.vim
  so $HOME/.vim/settings.vim
  so $HOME/.vim/keymaps.vim
  so $HOME/.vim/abbrev.vim
  so $HOME/.vim/theme.vim
else
  so $HOME/.vim/settings.vim
endif
