"
" vimrc by fs
"

set shell=$SHELL

set encoding=utf-8
set modelines=0
set autoread
set visualbell
set noshowmode
set showcmd
set clipboard=unnamedplus
set mouse=a
set relativenumber
set number
set cursorline
set colorcolumn=80,100,120
set hidden
set splitbelow
set splitright
set title
set showmatch
set list
set nobackup
set undofile
set lazyredraw
set wildmenu
set wildmode=longest,full
set fillchars=vert:│
set noswapfile
set termguicolors

" whitespace
set autoindent
set copyindent
set nowrap
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set smarttab
set expandtab
set backspace=indent,eol,start
set textwidth=120

" searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set gdefault
set inccommand=split

" folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=syntax

set omnifunc=syntaxcomplete#Complete

filetype off | source ~/.config/nvim/plug.vim
filetype plugin indent on
syntax on

source ~/.config/nvim/ag.vim
source ~/.config/nvim/ale.vim
source ~/.config/nvim/auto-mk-dir.vim
source ~/.config/nvim/colors.vim
source ~/.config/nvim/contabs.vim
source ~/.config/nvim/deoplete.vim
source ~/.config/nvim/fts.vim
source ~/.config/nvim/fzf.vim
source ~/.config/nvim/mappings.vim

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_close_button = 0

let g:AutoPairsMultilineClose = 0
let g:AutoPairsFlyMode = 0

let g:gist_clip_command = 'pbc'
let g:gist_detect_filetype = 1

let g:jsx_ext_required = 0

let g:netrw_browse_split = 0
let g:netrw_liststyle=3
let g:netrw_preview=1

let g:sexp_enable_insert_mode_mappings = 0

let g:splitjoin_ruby_do_block_split = 0

let g:tmuxline_preset = 'crosshair'

let g:rainbow_active = 1
let g:rainbow_conf = {
\   'guifgs': ['Orange4', 'teal', 'DeepPink4', 'DeepSkyBlue4'],
\   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\       },
\       'lisp': {
\           'guifgs': ['Orange4', 'teal', 'DeepPink4', 'DeepSkyBlue4', 'olive'],
\       },
\       'vim': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\       },
\       'html': {
\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\       },
\       'css': 0,
\   }
\}
