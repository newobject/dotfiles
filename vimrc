""
"" Basic Setup
""

set nocompatible      " Use vim, no vi defaults
set number            " Show line numbers
set encoding=utf-8    " Set default encoding to UTF-8
set guifont=Monaco:h18

""
"" Whitespace
""

"" set nowrap          " don't wrap lines
set tabstop=2       " a tab is two spaces
set shiftwidth=2    " an autoindent (with <<) is two spaces
set expandtab       " use spaces, not tabs
set list            " Show invisible characters

"" List chars
set listchars=""                " Reset the listchars
set listchars=tab:\ \           " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.          " show trailing spaces as dots
set listchars+=extends:>        " The character to show in the last column when wrap is
                                " off and the line continues beyond the right of the screen
set listchars+=precedes:<       " The character to show in the last column when wrap is
                                " off and the line continues beyond the right of the screen


""
"" Searching
""

set hlsearch        " highlight matches
set incsearch       " incremental searching
set ignorecase      " searches are case insensitive..
set smartcase       " ... unless they contain at least one capital letter


""
"" Wild setting
""

"" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem

"" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

"" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

"" Disable temp and backup files
set wildignore+=*.swp,*~,._*


""
"" Backup and swap files
""

set backupdir=~/.vim/_backup//        " where to put backup files.
set directory=~/.vim/_temp//          " where to put swap files.

filetype off

set background=dark

set cursorline

set laststatus=2

if filereadable(expand("~/.vim/.vimrc.before"))
  source ~/.vim/.vimrc.before
endif

let mapleader = ","

if ! exists('g:vim"_packages')
  let g:vim_packages = ['general', 'fancy', 'coding', 'ruby', 'javascript']
endif

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()


Bundle 'gmarik/vundle'


if count(g:vim_packages, 'general')
  Bundle 'scrooloose/nerdtree'
  map <C-e> :NERDTreeToggle<CR>
  map <leader>e :NERDTreeFind<CR>

  Bundle 'kien/ctrlp.vim'
  let g:ctrlp_root_markers = ['.ctrlp_root_flag']
  let g:ctrlp_working_path_mode = 'r'

  Bundle 'tpope/vim-fugitive'

  "Bundle 'altercation/vim-colors-solarized'
  "colorscheme solarized
  Bundle 'yearofmoo/Vim-Darkmate'
  colorscheme darkmate

  if executable('ack')
    Bundle 'mileszs/ack.vim'
  endif

  if executable('ag')
    Bundle 'rking/ag.vim'
  endif
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


if count(g:vim_packages, 'javascript')
  Bundle "pangloss/vim-javascript"
  let g:html_indent_inctags = "html,body,head,tbody"
  let g:html_indent_script1 = "inc"
  let g:html_indent_style1 = "inc"
endif

""
"" File types
""
filetype plugin on
filetype indent on
filetype plugin indent off       " Turn on filetype plugins (:help filetype-plugin)
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on         " Turn on syntax highlighting allowing local overrides
