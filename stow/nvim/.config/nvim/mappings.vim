" keymaps
" interesting unused keys in normal mode:
"   - <Return>
"   - +
"   - _
"   - \
"   - | (currently used as an aux <LocalLeader>)
"   - <Del> (testing for  :noh)

let mapleader = ' '
let maplocalleader = '<Bar>'
map <BS> <LocalLeader>

" default / to perl-style regexp's
nnoremap / /\v
vnoremap / /\v

" go from insert to normal mode
inoremap jj <Esc>
inoremap kk <Esc>
inoremap jk <Esc>
inoremap kj <Esc>

" run macros
nnoremap Q @q

" ahw, what the hell!
cnoreabbrev W w
cnoreabbrev Q q

" emacs motion bindings
inoremap <C-A> <Home>
inoremap <C-B> <Left>
inoremap <C-E> <End>
inoremap <C-F> <Right>

nnoremap j gj
nnoremap k gk

map $ <Nop>
map ^ <Nop>
noremap H 0
noremap L $

" easier navigation between split windows
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

nnoremap <Leader>- <Plug>VinegarTabUp

" C-s will save us all!
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>

" remove highligted terms
nnoremap <Leader><Space> :noh<CR>
nnoremap <Del> :noh<CR>

" opens/closes folds
nnoremap z<Space> zA

" delete trailing whitespace
nnoremap <Leader>W :%s/\s\+$//<CR>:let @/=''<CR>

" re-hardwrap text
nnoremap <Leader>Q gqip

" reselect last pasted text
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

" switch between the last two files
nnoremap <Leader>c <C-^>
nnoremap <Leader><Tab> <C-^>

nnoremap <Leader>M :TagbarToggle<CR>
nnoremap <Leader>a :Ack<Space>
nnoremap <Leader>A :Ack<Space><C-r><C-w><CR>

" tabedit intersting dirs
nnoremap <silent> <Leader>< :vsplit $MYVIMRC<CR>
nnoremap <silent> <Leader>, :execute ':TP' fnamemodify(resolve(expand($MYVIMRC)), ':h')<CR>
nnoremap <silent> <Leader>z :TP $ZDOTDIR/.zshrc<CR>

" source
nnoremap <Leader>si :source $MYVIMRC<CR>
nnoremap <Leader>so :source %<CR>

" plug
nnoremap <Leader>vpc :PlugClean<CR>
nnoremap <Leader>vpi :PlugInstall<CR>
nnoremap <Leader>vpu :PlugUpdate<CR>

" gundo
nnoremap <Leader>U :GundoToggle<CR>

" yankstack
nmap <Leader>p <Plug>yankstack_substitute_older_paste
nmap <Leader>P <Plug>yankstack_substitute_newer_paste

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" sneak

map <Leader>s <Plug>Sneak_s
map <Leader>S <Plug>Sneak_S

" swap default seek mappings by sneak
map f <Plug>Sneak_f
map F <Plug>Sneak_F
map t <Plug>Sneak_t
map T <Plug>Sneak_T

" yank to EOL
nnoremap Y y$

" delete to EOL
inoremap <C-Del> <C-\><C-O>D

" disable meta mappings
nnoremap <M-h> <Nop>
nnoremap <M-j> <Nop>
nnoremap <M-k> <Nop>
nnoremap <M-l> <Nop>
nnoremap <M-s-h> <Nop>
nnoremap <M-s-j> <Nop>
nnoremap <M-s-k> <Nop>
nnoremap <M-s-l> <Nop>

nnoremap <C-p> :FFiles<CR>
nnoremap <Leader>b :FBuffers<CR>

"invoke fzf with the list of projects configured in g:contabs#project#locations
"the enabled hotkeys are { 'ctrl-t': 'tabedit', 'ctrl-e, <cr>': 'edit' }
nnoremap <silent> <Leader>m :call contabs#project#select()<CR>

"invoke fzf with the list of buffers of current tab's workingdir
"the enabled hotkeys are { 'ctrl-t': 'tabedit', 'ctrl-e, <cr>': 'edit', 'ctrl-v': 'vsp', 'ctrl-x': 'sp' }
nnoremap <silent> <Leader>b :call contabs#buffer#select()<CR>

" enter resize mode
let g:winresizer_start_key = '<C-_>'

" neosnippets
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)
