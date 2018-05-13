call plug#begin('~/.vim/plugged')
"common
"Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'rking/ag.vim', { 'on': 'Ag' }
Plug 'thinca/vim-quickrun'
Plug 'neomake/neomake'
Plug 'christoomey/vim-tmux-navigator'
Plug 'cohama/agit.vim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
"Jade
Plug 'digitaltoad/vim-jade', { 'for': ['jade', 'pug'] }
"Python
Plug 'klen/python-mode', { 'for': 'python' }
Plug 'mitsuhiko/vim-python-combined', { 'for': 'python' }
"Elm
Plug 'ElmCast/elm-vim', { 'for': 'elm' }
"CPP
Plug 'zchee/deoplete-clang', { 'for': ['cpp', 'cc', 'c'] }
Plug 'tweekmonster/deoplete-clang2'
Plug 'justmao945/vim-clang'
"Themes
Plug 'chriskempson/base16-vim'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
Plug 'joshdick/onedark.vim'
Plug 'jacoborus/tender.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'lifepillar/vim-solarized8'
Plug 'rakr/vim-one'
"Markdown
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
"TOML
Plug 'cespare/vim-toml', { 'for': 'toml' }
call plug#end()

colorscheme base16-default-dark

" Settings
set autoread
syntax enable
set t_Co=256

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete:h14

set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set number

set nocursorline
set nocursorcolumn
syntax sync minlines=256

set wildmenu " enhanced command line completion
set hidden " current buffer can be put into background
set cmdheight=1 " command bar height

set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

set nocompatible " not compatible with vi

" make backspace behave in a sane manner
set backspace=indent,eol,start
"find a word

" set a map leader for more key combos
let g:mapleader = ','
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/
nnoremap <C-f> :Ag -Q "

" Use deoplete.
let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr><S-tab> pumvisible() ? "\<c-p>" : "\<tab>"

set noerrorbells                " No beeps
set novisualbell
set noswapfile                  " Don't use swapfile
set nobackup                   " Don't create annoying backup files
set splitright                  " Split vertical windows right to the current
"windows
set splitbelow                  " Split horizontal windows below to the
"current windows
set fileformats=unix,dos,mac    " Prefer Unix over Windows over OS 9 formats

""http://stackoverflow.com/questions/20186975/vim-mac-how-to-copy-to-clipboard-without-pbcopy
" works only for OS X
let os=substitute(system('uname'), '\n', '', '')
if os == 'Darwin' || os == 'Mac'
  set clipboard^=unnamed
  set clipboard^=unnamedplus"
endif

" Searching
set ignorecase " case insensitive searching
set smartcase " case-sensitive if expresson contains a capital letter
set hlsearch
set incsearch " set incremental search, like modern browsers
set showmatch " show matching braces

" Neomake
autocmd! BufWritePost * Neomake
let g:neomake_typescript_enabled_makers = ['tslint']
let g:neomake_css_enabled_makers = ['stylelint']
let g:neomake_javascript_enabled_makers = ['eslint']

"Airline options
let g:airline_powerline_fonts=1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='bubblegum'

"Open NERDTree with Ctrl-n
map <C-n> :NERDTreeToggle<CR>
"set timeout
set timeoutlen=1000
"set ttimeout
set ttimeoutlen=50

"Emmet settings
let g:user__install_global = 0
autocmd FileType html,css EmmetInstall
au BufRead,BufNewFile *.tl setfiletype lisp

"react settings
let g:jsx_ext_required = 0

" nvim setup
" workaround for https://github.com/neovim/neovim/issues/2048
if has('nvim')
  nmap <BS> <C-W>h
 endif

"Python settings
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
let g:pymode_virtualenv = 1
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_ignore="E501,W601,C0110"


" Setting Presistent undo
if has('persistent_undo')
  if !isdirectory($HOME."/.vim_undo_dir")
    call mkdir($HOME."/.vim_undo_dir", "", 0700)
  endif
  set undofile
  set undodir=$HOME/vim_undo_dir
endif
