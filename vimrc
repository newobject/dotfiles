set nocompatible
filetype off

set encoding=utf-8
set laststatus=2

if filereadable(expand("~/.vim/.vimrc.before"))
  source ~/.vim/.vimrc.before
endif

let mapleader = ","

if ! exists('g:vim_packages')
  let g:vim_packages = ['general', 'fancy', 'coding', 'ruby']
endif

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()


Bundle 'gmarik/vundle'


if count(g:vim_packages, 'general')
  Bundle 'scrooloose/nerdtree'
  Bundle 'kien/ctrlp.vim'
endif

if count(g:vim_packages, 'fancy')
  Bundle 'Lokaltog/vim-powerline'
  let g:Powerline_symbols = 'fancy'
endif

if count(g:vim_packages, 'coding')
  Bundle 'scrooloose/nerdcommenter'
endif

if count(g:vim_packages, 'ruby')
  Bundle 'vim-ruby/vim-ruby'
endif

filetype plugin indent on
