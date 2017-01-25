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
" set listchars+=eol:$
set nobackup
set noswapfile
set undofile
set lazyredraw
set wildmenu
set wildmode=longest,full
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

if filereadable(expand('~/.vim/plugins.vim'))
  filetype off

  source ~/.vim/plugins.vim
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
  autocmd FileType java       setlocal ts=4 sts=4 sw=4 expandtab textwidth=99
  autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType json       setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType make       setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType objc       setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType python     setlocal ts=4 sts=4 sw=4 expandtab textwidth=99
  autocmd FileType scss.css   setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType yaml       setlocal ts=2 sts=2 sw=2 expandtab

  autocmd Filetype gitcommit  setlocal spell textwidth=72

  autocmd BufNewFile,BufRead *.rss setfiletype xml
  autocmd BufNewFile,BufRead *.skim setfiletype slim

  autocmd FileType go nmap <buffer> = <Esc>:Fmt<CR>
endif

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

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Matcher
if executable('matcher')
  let g:ctrlp_match_func = { 'match': 'GoodMatch' }

  function! GoodMatch(items, str, limit, mmode, ispath, crfile, regex)

    " Create a cache file if not yet exists
    let cachefile = ctrlp#utils#cachedir().'/matcher.cache'
    if !( filereadable(cachefile) && a:items == readfile(cachefile) )
      call writefile(a:items, cachefile)
    endif
    if !filereadable(cachefile)
      return []
    endif

    " a:mmode is currently ignored. In the future, we should probably do
    " something about that. the matcher behaves like "full-line".
    let cmd = 'matcher --limit '.a:limit.' --manifest '.cachefile.' '
    if !( exists('g:ctrlp_dotfiles') && g:ctrlp_dotfiles )
      let cmd = cmd.'--no-dotfiles '
    endif
    let cmd = cmd.a:str

    return split(system(cmd), "\n")

  endfunction
end

" keymaps
let mapleader = ','
let maplocalleader = '\'

" default / to perl-style regexp's
nnoremap / /\v
vnoremap / /\v

" use tab to jump between matching brackets
" map <Tab> %

nnoremap <C-;> <C-i>

" go from insert to normal mode
inoremap jj <Esc>
inoremap kk <Esc>
inoremap jk <Esc>
inoremap kj <Esc>

" disable ex mode mapping
map Q <Nop>

" ahw, what the hell!
cnoreabbrev W w
cnoreabbrev Q q

" disable arrows
noremap  <Up>    <Nop>
noremap  <Down>  <Nop>
noremap  <Left>  <Nop>
noremap  <Right> <Nop>

nnoremap j gj
nnoremap k gk

" easier navigation between split windows
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

nnoremap + <C-w>+
nnoremap _ <C-w>-

nnoremap <Leader>- <Plug>VinegarTabUp

" C-s will save us all!
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>

" remove highligted terms
nnoremap <Leader><Space> :noh<CR>

" opens/closes folds
nnoremap <Space> za

" delete trailing whitespace
nnoremap <Leader>W :%s/\s\+$//<CR>:let @/=''<CR>

" re-hardwrap text
nnoremap <Leader>Q gqip

" reselect last pasted text
nnoremap <Leader>v V`]

" switch between the last two files
nnoremap <Leader>c <C-^>

map <Leader>M :TagbarToggle<CR>
map <Leader>a :Ag<Space>
map <Leader>A :Ag<Space><C-r><C-w><CR>
map <Leader>m :tabnew<CR>:lcd ../

map <Leader>, :tabedit $MYVIMRC<CR>
map <Leader>< :tabedit ~/.vim/plugins.vim<CR>
map <Leader>z :tabedit ~/.zshrc<CR>

" gundo
nnoremap <Leader>u :GundoToggle<CR>

" yankstack
nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>P <Plug>yankstack_substitute_newer_paste

" vim rspec
nnoremap <Leader>t :call RunCurrentSpecFile()<CR>
nnoremap <Leader>s :call RunNearestSpec()<CR>
nnoremap <Leader>S :call RunLastSpec()<CR>

vnoremap <Leader>a :Tab/\w:\zs/l0l1<CR>

call togglebg#map('<F5>')
"
" Change local working dir upon tab creation
function! TabNewWithCwD(newpath)
  :execute "tabnew " . a:newpath
  if isdirectory(a:newpath)
    :execute "lcd " . a:newpath
  else
    let dirname = fnamemodify(a:newpath, ":h")
    :execute "lcd " . dirname
  endif
endfunction

command! -nargs=1 -complete=file TabNew :call TabNewWithCwD("<args>")
