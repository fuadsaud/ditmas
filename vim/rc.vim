"
" vimrc by fs
"

set shell=/bin/sh

set nocompatible
set encoding=utf-8
set modelines=0
set autoread
set visualbell
set noshowmode
set showcmd
set clipboard=unnamed
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
set noswapfile
set undofile
set lazyredraw
set wildmenu
set wildmode=longest,full

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
set textwidth=100

" searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set gdefault

" folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent

if filereadable(expand('~/.vim/plug.vim'))
  filetype off

  source ~/.vim/plug.vim
endif

filetype plugin indent on
syntax on

if filereadable(expand('~/.vim/colors.vim'))
  source ~/.vim/colors.vim
endif

set omnifunc=syntaxcomplete#Complete

if has('autocmd')
  autocmd FileType c          setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType cpp        setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType cpp        setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType css        setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType scss       setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType go         setlocal ts=4 sts=4 sw=4 noexpandtab
  autocmd FileType haskell    setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType html       setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType java       setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType json       setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType make       setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType objc       setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType python     setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType scss.css   setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType yaml       setlocal ts=2 sts=2 sw=2 expandtab

  autocmd Filetype gitcommit  setlocal spell textwidth=72

  autocmd BufNewFile,Bufread *.hl   setfiletype clojure
  autocmd BufNewFile,BufRead *.rss  setfiletype xml
  autocmd BufNewFile,BufRead *.skim setfiletype slim

  autocmd FileType go nmap <buffer> = <Esc>:Fmt<CR>
endif

if filereadable(expand('~/.vim/rainbow.vim'))
  source ~/.vim/rainbow.vim
endif

highlight link hspecDescribe Type
highlight link hspecIt Identifier
highlight link hspecDescription Comment

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#tabs_label = fnamemodify(getcwd(), ':t')

let g:AutoPairsMultilineClose = 0
let g:AutoPairsFlyMode = 0

let g:netrw_browse_split = 0
let g:netrw_liststyle=3
let g:netrw_preview=1

let g:UltiSnipsExpandTrigger       = '<tab>'
let g:UltiSnipsJumpForwardTrigger  = '<c-b>'
let g:UltiSnipsJumpBackwardTrigger = '<c-z>'
let g:UltiSnipsEditSplit           = 'vertical'

let g:rspec_command = 'call Send_to_Tmux("bundle exec rspec {spec}\n")'

let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1

let g:splitjoin_ruby_do_block_split = 0

let g:jsx_ext_required = 0

let g:clojure_align_subforms = 1

let g:sexp_enable_insert_mode_mappings = 0

" The Silver Searcher
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
endif

if filereadable(expand('~/.vim/mappings.vim'))
  source ~/.vim/mappings.vim
endif
