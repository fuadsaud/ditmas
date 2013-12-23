"
" vimrc by fs
"
set nocompatible
set encoding=utf-8
set modelines=0
set autoread
set visualbell
set noshowmode
set showcmd
set clipboard=unnamed
set mouse=a
set number
set relativenumber
set cursorline
set colorcolumn=80
set hidden
set splitbelow
set splitright
set title
set showmatch
set list
" set listchars+=eol:$
set nobackup
set noswapfile
set undofile
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
set textwidth=79

" searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set gdefault

if filereadable(expand('~/.vim/bundles.vim'))
  filetype off

  source ~/.vim/bundles.vim
endif

filetype plugin indent on
syntax on

set omnifunc=syntaxcomplete#Complete

" set background=dark
" colorscheme solarized
colorscheme hemisu

if has('autocmd')
  autocmd FileType c          setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType cpp        setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType css        setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType go         setlocal ts=4 sts=4 sw=4 noexpandtab
  autocmd FileType html       setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType java       setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType make       setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType scss.css   setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType yaml       setlocal ts=2 sts=2 sw=2 expandtab

  autocmd BufNewFile,BufRead *.rss setfiletype xml

  " Seeing is Believing
  let g:xmpfilter_cmd = 'seeing_is_believing'

  autocmd FileType ruby nmap <buffer> <Leader>h <Plug>(seeing_is_believing-mark)
  autocmd FileType ruby xmap <buffer> <Leader>h <Plug>(seeing_is_believing-mark)
  autocmd FileType ruby imap <buffer> <Leader>h <Plug>(seeing_is_believing-mark)

  autocmd FileType ruby nmap <buffer> <Leader>H <Plug>(seeing_is_believing-clean)
  autocmd FileType ruby xmap <buffer> <Leader>H <Plug>(seeing_is_believing-clean)
  autocmd FileType ruby imap <buffer> <Leader>H <Plug>(seeing_is_believing-clean)

  autocmd FileType ruby nmap <buffer> <Leader>S <Plug>(seeing_is_believing-run_-x)
  autocmd FileType ruby xmap <buffer> <Leader>S <Plug>(seeing_is_believing-run_-x)
  autocmd FileType ruby imap <buffer> <Leader>S <Plug>(seeing_is_believing-run_-x)

  autocmd FileType go nmap <buffer> = <Esc>:Fmt<CR>
endif

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

let g:netrw_browse_split = 4
let g:netrw_altv = 1

let g:snipMate = {}
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['scss'] = 'scss,css'
let g:snipMate.scope_aliases['liquid'] = 'liquid,html'

let g:rspec_command = 'call Send_to_Tmux("zeus rspec {spec}\n")'

let g:loremipsum_files = { 'en': expand('~/.vim/mussumipsum.txt') }

let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1

" keymaps
let mapleader = ','

" default / to perl-style regexp's
nnoremap / /\v
vnoremap / /\v

" use tab to jump between matching brackets
map <Tab> %

" go from insert to normal mode
inoremap jj <Esc>:w<CR>
inoremap kk <Esc>:w<CR>

" disable arrows
noremap  <Up>    <Nop>
noremap  <Down>  <Nop>
noremap  <Left>  <Nop>
noremap  <Right> <Nop>

" disable ex mode mapping
map Q <Nop>

" ahw, what the hell!
cnoreabbrev W w
cnoreabbrev Q q

" easier navigation between split windows
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" C-s will save us all!
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>

" remove highligted terms
nnoremap <Leader><Space> :noh<CR>

" delete trailing whitespace
nnoremap <Leader>W :%s/\s\+$//<CR>:let @/=''<CR>

" re-hardwrap text
nnoremap <Leader>q gqip

" reselect last pasted text
nnoremap <Leader>v V`]

" switch between the last two files
nnoremap <Leader>c <C-^>

map <Leader>m :TagbarToggle<CR>
map <Leader>, :tabedit $MYVIMRC<CR>
map <Leader>< :tabedit ~/.vim/bundles.vim<CR>

" gundo
nnoremap <Leader>u :GundoToggle<CR>

" vim rspec
nnoremap <Leader>t :call RunCurrentSpecFile()<CR>
nnoremap <Leader>s :call RunNearestSpec()<CR>
nnoremap <Leader>l :call RunLastSpec()<CR>

call togglebg#map('<F5>')
