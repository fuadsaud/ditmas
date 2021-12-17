" keymaps
" interesting unused keys in normal mode:
"   - <Return> (testing for buffer switch)
"   - + (testing for aux <LocalLeader>)
"   - _ (testing for aux <Leader>)
"   - \
"   - |
"   - <Del> (testing for :noh)

"     __               __
"    / /__  ____ _____/ /__  _____
"   / / _ \/ __ `/ __  / _ \/ ___/
"  / /  __/ /_/ / /_/ /  __/ /
" /_/\___/\__,_/\__,_/\___/_/
"

let mapleader = '_'
let maplocalleader = '+'
map <Space> _
map <Backspace> +

"          __    __
"   ____ _/ /_  / /_  ________ _   __
"  / __ `/ __ \/ __ \/ ___/ _ \ | / /
" / /_/ / /_/ / /_/ / /  /  __/ |/ /
" \__,_/_.___/_.___/_/   \___/|___/
"

" get rid of case bs
cnoreabbrev W w
cnoreabbrev Q q

"                    __
"    ____ ___  ___  / /_____ _
"   / __ `__ \/ _ \/ __/ __ `/
"  / / / / / /  __/ /_/ /_/ /
" /_/ /_/ /_/\___/\__/\__,_/
"

" disable meta mappings
nnoremap <M-h> <Nop>
nnoremap <M-j> <Nop>
nnoremap <M-k> <Nop>
nnoremap <M-l> <Nop>
nnoremap <M-s-h> <Nop>
nnoremap <M-s-j> <Nop>
nnoremap <M-s-k> <Nop>
nnoremap <M-s-l> <Nop>

"     _                      __
"    (_)___  ________  _____/ /_
"   / / __ \/ ___/ _ \/ ___/ __/
"  / / / / (__  )  __/ /  / /_
" /_/_/ /_/____/\___/_/   \__/
"

" emacs motion bindings
inoremap <C-a> <Home>
inoremap <C-b> <Left>
inoremap <C-e> <End>
inoremap <C-f> <Right>

" delete to EOL
inoremap <C-Del> <C-\><C-O>D

" easier navigation between split windows
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" neosnippets
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

" write buffer on C-s
inoremap <C-s> <Esc>:w<CR>

" write buffer on C-s
nnoremap <C-s> :w<CR>

" C-p
nnoremap <C-p> :FFiles<CR>

" enter resize mode
let g:winresizer_start_key = '<C-_>'

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

" graphic line nav
nnoremap j gj
nnoremap k gk

" less finger yoga
noremap H ^
noremap L $
" TODO: remove when muscle memory is adapted
map $ <Nop>
map ^ <Nop>

" yank to EOL
nnoremap Y y$

" yank/paste to register 0
onoremap <Leader>y "0y
xnoremap <Leader>y "0y
nnoremap <Leader>p "0p

" opens/closes folds
nnoremap z<Space> zA

" swap default seek mappings by sneak
map f <Plug>Sneak_f
map F <Plug>Sneak_F
map t <Plug>Sneak_t
map T <Plug>Sneak_T

" easyalign
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

nnoremap <LocalLeader>j[ vi[<C-v>$:EasyAlign\ g/^\S/<CR>gv=
nnoremap <LocalLeader>j{ vi{<C-v>$:EasyAlign\ g/^\S/<CR>gv=

" reselect last pasted text
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

" ack
nnoremap <Leader>a :Ack<Space>
nnoremap <Leader>A :Ack<Space><C-r><C-a><CR>

" In the quickfix window, <CR> is used to jump to the error under the
" cursor, so undefine the mapping there.
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>

" set fold methods
nnoremap <Leader>zf :set fdm=manual<CR>
nnoremap <Leader>zi :set fdm=indent<CR>
nnoremap <Leader>zm :set fdm=marker<CR>
nnoremap <Leader>zs :set fdm=syntax<CR>
nnoremap <Leader>zd :set fdm=diff<CR>

" telescope
nnoremap <C-p>      <cmd>Telescope find_files   theme=ivy<CR>
nnoremap <Leader>ff <cmd>Telescope find_files   theme=ivy<CR>
nnoremap <Leader>fb <cmd>Telescope buffers      theme=ivy<CR>
nnoremap <Leader>fg <cmd>Telescope live_grep    theme=ivy<CR>
nnoremap <Leader>fh <cmd>Telescope help_tags    theme=ivy<CR>
nnoremap <Leader>fc <cmd>Telescope colorschemes theme=ivy<CR>
nnoremap <Leader>ft <cmd>Telescope treesitter   theme=ivy<CR>


" switch between the last two files
nnoremap <Leader>c <C-^>
" nnoremap <Return>  <C-^>

" re-hardwrap text
nnoremap <Leader><Return> gqip

" sneak
map <Leader>s <Plug>Sneak_s
map <Leader>S <Plug>Sneak_S

" source
nnoremap <Leader>si :source $MYVIMRC<CR>
nnoremap <Leader>so :source %<CR>

" plug
nnoremap <Leader>pc :PackerClean<CR>
nnoremap <Leader>pi :PackerInstall<CR>
nnoremap <Leader>pu :PackerUpdate<CR>

" delete trailing whitespace
nnoremap <Leader>w :%s/\s\+$//<CR>:let @/=''<CR>

" squeeze multiple blank lines
nnoremap <Leader>W :%s/\(\n\n\)\n\+/\1/<CR>:let @/=''<CR>

" tabedit interesting dirs
nnoremap <silent> <Leader>< :vsplit $MYVIMRC<CR>
nnoremap <silent> <Leader>,v :execute ':TP' fnamemodify(resolve(expand($MYVIMRC)), ':h')<CR>
nnoremap <silent> <Leader>,z :TP $ZDOTDIR/.zshrc<CR>

" remove highligted terms
nnoremap <Leader><Space> :noh<CR>
nnoremap <Del> :noh<CR>

" copy and move lines
nnoremap <Leader>+c :+copy.<Left><Left><Left><Left><Left>
nnoremap <Leader>-c :-copy.<Left><Left><Left><Left><Left>
nnoremap <Leader>+m :-move.<Left><Left><Left><Left><Left>
nnoremap <Leader>-m :-move.<Left><Left><Left><Left><Left>
