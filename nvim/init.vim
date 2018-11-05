"
" vimrc by fs
"

set shell=/usr/bin/zsh

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
:set noswapfile

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
set foldmethod=indent

filetype off | source ~/.config/nvim/plug.vim
filetype plugin indent on
syntax on

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

  autocmd FileType html,css,markdown EmmetInstall
  autocmd FileType markdown,text,tex DittoOn

  autocmd Filetype gitcommit  setlocal spell textwidth=72

  autocmd BufNewFile,Bufread *.hl        setfiletype clojure
  autocmd BufNewFile,BufRead *.json.base setfiletype json
  autocmd BufNewFile,BufRead *.rss       setfiletype xml
  autocmd BufNewFile,BufRead *.skim      setfiletype slim

  autocmd FileType go nmap <buffer> = <Esc>:Fmt<CR>
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

let g:sexp_enable_insert_mode_mappings = 0

let g:acid_log_messages=1
let g:acid_eval_command_handler = ['MetaRepl']

let g:deoplete#enable_at_startup = 1
let g:deoplete#keyword_patterns = {}
let g:deoplete#keyword_patterns.clojure = '[\w!$%&*+/:<=>?@\^_~\-\.#]*'

" deoplete doesnt' play well with multiple cursors
function! Multiple_cursors_before()
    let b:deoplete_disable_auto_complete = 1
endfunction

function! Multiple_cursors_after()
    let b:deoplete_disable_auto_complete = 0
endfunction

" The Silver Searcher
if executable('ag')
  "set grepprg=ag\ --nogroup
endif

let g:ale_fixers = { 'javascript': ['prettier_standard'] }
let g:ale_linters = { 'javascript': ['standard'], 'clojure': ['joker'] }
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_save = 1
let g:ale_lint_on_enter = 0
let g:airline#extensions#ale#enabled = 1

let g:javascript_standard_options = '--parser babel-eslint --plugin flowtype'

source ~/.config/nvim/colors.vim
source ~/.config/nvim/rainbow.vim
source ~/.config/nvim/fzf.vim
source ~/.config/nvim/mappings.vim
" source ~/Code/nubank/nudev/ides/nvim/plugin/nudev.vim

augroup vimrc-auto-mkdir
  autocmd!
  autocmd BufWritePre * call s:auto_mkdir(expand('<afile>:p:h'), v:cmdbang)
  function! s:auto_mkdir(dir, force)
    if !isdirectory(a:dir)
          \   && (a:force
          \       || input("'" . a:dir . "' does not exist. Create? [y/N] ") =~? '^y\%[es]$')
      call mkdir(iconv(a:dir, &encoding, &termencoding), 'p')
    endif
  endfunction
augroup END

let g:contabs#project#locations = [
  \ { 'path': '~/Code/fuadsaud', 'depth': 1, 'git_only': 0 },
  \ { 'path': '~/Code/nubank', 'depth': 1, 'git_only': 0 },
  \]
