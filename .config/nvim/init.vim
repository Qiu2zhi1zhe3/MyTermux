"setup vim-plug {{{

  "Note: install vim-plug if not present
  if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
  endif

  "Note: Skip initialization for vim-tiny or vim-small.
  if !1 | finish | endif
  if has('vim_starting')
    set nocompatible               " Be iMproved
    " Required:
    call plug#begin()
  endif

"}}}
call plug#begin('~/.config/nvim/plugins')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'arcticicestudio/nord-vim'
"Plug 'shaunsingh/nord.nvim'
source ~/.config/nvim/plugins/themes.vim
call plug#end()
doautocmd User PlugLoaded
source ~/.config/nvim/options.vim
source ~/.config/nvim/keymaps.vim
set fillchars+=eob:\ 