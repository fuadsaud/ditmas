"
" vimrc by fs
"

set shell=$SHELL

set encoding=utf-8
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

" completion
set completeopt=menuone,noinsert,noselect
set shortmess+=c
set omnifunc=syntaxcomplete#Complete

" inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
"   \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
"   \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" diagnostic
" let g:diagnostic_enable_virtual_text = 1
" let g:diagnostic_virtual_text_prefix = "\uE0CE"

let s:config_dir = stdpath('config')

let s:additional_configs = [
\   'plug-helpers.vim',
\   'plug.vim',
\   'ag.vim',
\   'auto-mk-dir.vim',
\   'colors.vim',
\   'contabs.vim',
\   'fts.vim',
\   'fzf.vim',
\   'mappings.vim',
\   'lsp.vim',
\   'conjure.vim'
\ ]

for additional_config in s:additional_configs
  execute "source " . s:config_dir . '/' . additional_config
endfor

" airline

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_close_button = 0

" tmuxline

let g:tmuxline_preset = 'crosshair'

" gist

let g:gist_clip_command = 'pbc'
let g:gist_detect_filetype = 1

" jsx

let g:jsx_ext_required = 0

" netrw

let g:netrw_browse_split = 0
let g:netrw_liststyle=3
let g:netrw_preview=1

let g:splitjoin_ruby_do_block_split = 0

" parentheses

let g:AutoPairsMultilineClose = 0
let g:AutoPairsFlyMode = 0

let g:sexp_enable_insert_mode_mappings = 0

let g:rainbow_active = 1
let g:rainbow_conf['guifgs'] = [
\     '#9E7156',
\     '#538798',
\     '#7F4C60',
\     '#60A195',
\     '#B55242',
\     '#247DAE',
\     '#CB2656',
\     '#A1617A',
\     '#8C3432',
\     '#C77366',
\     '#B8937C',
\     '#D3CBAF',
\ ]

" let g:rainbow_conf['guifgs'] = ['Orange4', 'teal', 'DeepPink4', 'DeepSkyBlue4']

let g:sneak#label = 1
