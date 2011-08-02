" ================
" Pathogen stuff
" ================

filetype off 
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" ================
" General
" ================

set clipboard=unnamed

let mapleader = ','

vmap > >gv
vmap < <gv

set tags=./tags

if has("gui_running")
  colorscheme candycode
endif

set hlsearch
set incsearch

set grepprg=ack

" Make the omnicomplete text readable
:highlight PmenuSel ctermfg=black

set backspace=indent,eol,start

set laststatus=2

highlight StatusLine ctermfg=blue ctermbg=yellow

set ruler
set number

set autoindent

set autoread

set ignorecase
set smartcase

set tabstop=2
set shiftwidth=2
set expandtab

set visualbell

" these lets you jump between windows
map <C-l> <C-w>l
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k

" ================
" Command-T
" ================

let g:CommandTCancelMap='<Esc>'

" open command-t selection in horizontal split with Ctrl-g
let g:CommandTAcceptSelectionSplitMap='<C-g>'

" ================
" Erlang
" ================

" ================
" Haskell
" ================

au Bufenter *.hs compiler ghc

let g:haddock_browser="open"
let g:haddock_browser_callformat="%s %s"
let g:haddock_docdir = "/usr/local/share/doc/ghc/html/"
let g:ghc = "/usr/local/bin/ghc"

" ================
" Racket
" ================

au BufRead,BufNewFile *.rkt set filetype=scheme

" ================
" Python
" ================

au BufRead,BufNewFile *.py set filetype=python sw=4 sts=4 et

" ================
" Ruby
" ================
syntax on                 " Enable syntax highlighting
filetype plugin indent on " Enable filetype-specific indenting and plugins

augroup myfiletypes
  " Clear old autocmds in group
  autocmd!
  " autoindent with two spaces, always expand tabs
  autocmd FileType ruby,eruby,yaml,cucumber set ai sw=2 sts=2 et
  " enamble ruby omnicompletion
  autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
  " detect Rackup files
  au BufRead,BufNewFile *.ru set filetype=ruby
  au BufRead,BufNewFile *.hamljs set filetype=haml
augroup END
