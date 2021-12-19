" keymaps
" interesting unused keys in normal mode:
"   - <Return> (testing for running macros)
"   - + (testing for aux <LocalLeader>)
"   - _ (testing for aux <Leader>)
"   - \
"   - |
"   - <Del>
"   - Q

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

"
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

" emacs kill bindings
inoremap <C-K> <Esc>lDa
inoremap <C-U> <Esc>d0xi
inoremap <C-Y> <Esc>Pa
inoremap <C-X><C-S> <Esc>:w<CR>a

" write buffer on C-s
inoremap <C-s> <Esc>:w<CR>
nnoremap <C-s> :w<CR>

"                       _             __
"    ____  ____ __   __(_)___ _____ _/ /____
"   / __ \/ __ `/ | / / / __ `/ __ `/ __/ _ \
"  / / / / /_/ /| |/ / / /_/ / /_/ / /_/  __/
" /_/ /_/\__,_/ |___/_/\__, /\__,_/\__/\___/
"                     /____/

" easier navigation between split windows
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" switch between the last two files
nnoremap <Leader>c <C-^>

"                          __
"    ____ ___  ____  ____/ /__  _____
"   / __ `__ \/ __ \/ __  / _ \/ ___/
"  / / / / / / /_/ / /_/ /  __(__  )
" /_/ /_/ /_/\____/\__,_/\___/____/
"

" enter resize mode
let g:winresizer_start_key = '<C-_>'

" go from insert to normal mode
inoremap jj <Esc>
inoremap kk <Esc>
inoremap jk <Esc>
inoremap kj <Esc>

"                     __  _
"    ____ ___  ____  / /_(_)___  ____
"   / __ `__ \/ __ \/ __/ / __ \/ __ \
"  / / / / / / /_/ / /_/ / /_/ / / / /
" /_/ /_/ /_/\____/\__/_/\____/_/ /_/
"

" graphic line nav
nnoremap j gj
nnoremap k gk

" less finger yoga
noremap H ^
noremap L $
" TODO: remove after muscle memory has adapted
map $ <Nop>
map ^ <Nop>

" sneak
map f <Plug>Sneak_f
map F <Plug>Sneak_F
map t <Plug>Sneak_t
map T <Plug>Sneak_T
map s <Plug>Sneak_s
map S <Plug>Sneak_S

"                       __
"    __  ______ _____  / /__
"   / / / / __ `/ __ \/ //_/
"  / /_/ / /_/ / / / / ,<
"  \__, /\__,_/_/ /_/_/|_|
" /____/
"

" yank to EOL
nnoremap Y y$

" yank/paste to register 0
onoremap <Leader>y "0y
xnoremap <Leader>y "0y
nnoremap <Leader>p "0p

" reselect last pasted text
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

"                               __
"    ________  ____ ___________/ /_
"   / ___/ _ \/ __ `/ ___/ ___/ __ \
"  (__  )  __/ /_/ / /  / /__/ / / /
" /____/\___/\__,_/_/   \___/_/ /_/
"

" default / to perl-style regexp's
nnoremap / /\v
vnoremap / /\v

" ack
nnoremap <Leader>a :Ack<Space>
nnoremap <Leader>A :Ack<Space><C-r><C-a><CR>

" remove highligted terms
nnoremap <silent> <Leader><Esc> :noh<CR>

"     ____      __    __
"    / __/___  / /___/ /
"   / /_/ __ \/ / __  /
"  / __/ /_/ / / /_/ /
" /_/  \____/_/\__,_/
"

" set fold methods
nnoremap <Leader>zf :set fdm=manual<CR>
nnoremap <Leader>zi :set fdm=indent<CR>
nnoremap <Leader>zm :set fdm=marker<CR>
nnoremap <Leader>zs :set fdm=syntax<CR>
nnoremap <Leader>zd :set fdm=diff<CR>

" opens/closes folds
nnoremap z<Space> zA

"    __       __
"   / /____  / /__  ______________  ____  ___
"  / __/ _ \/ / _ \/ ___/ ___/ __ \/ __ \/ _ \
" / /_/  __/ /  __(__  ) /__/ /_/ / /_/ /  __/
" \__/\___/_/\___/____/\___/\____/ .___/\___/
"                               /_/
"

" telescope
nnoremap <C-p>      <cmd>Telescope find_files   theme=ivy<CR>
nnoremap <Leader>ff <cmd>Telescope find_files   theme=ivy<CR>
nnoremap <Leader>fb <cmd>Telescope buffers      theme=ivy<CR>
nnoremap <Leader>fg <cmd>Telescope live_grep    theme=ivy<CR>
nnoremap <Leader>fh <cmd>Telescope help_tags    theme=ivy<CR>
nnoremap <Leader>fc <cmd>Telescope colorschemes theme=ivy<CR>
nnoremap <Leader>ft <cmd>Telescope treesitter   theme=ivy<CR>

"
"    _________  __  _______________
"   / ___/ __ \/ / / / ___/ ___/ _ \
"  (__  ) /_/ / /_/ / /  / /__/  __/
" /____/\____/\__,_/_/   \___/\___/
"

" source
nnoremap <Leader>si :source $MYVIMRC<CR>
nnoremap <Leader>so :source %<CR>

"                       __
"     ____  ____ ______/ /_____  _____
"    / __ \/ __ `/ ___/ //_/ _ \/ ___/
"   / /_/ / /_/ / /__/ ,< /  __/ /
"  / .___/\__,_/\___/_/|_|\___/_/
" /_/
"

" packer
nnoremap <Leader>pc :PackerCompile<CR>
nnoremap <Leader>px :PackerClean<CR>
nnoremap <Leader>pi :PackerInstall<CR>
nnoremap <Leader>pu :PackerUpdate<CR>
nnoremap <Leader>pu :PackerSync<CR>

"            __    _ __
"  _      __/ /_  (_) /____  _________  ____ _________
" | | /| / / __ \/ / __/ _ \/ ___/ __ \/ __ `/ ___/ _ \
" | |/ |/ / / / / / /_/  __(__  ) /_/ / /_/ / /__/  __/
" |__/|__/_/ /_/_/\__/\___/____/ .___/\__,_/\___/\___/
"                             /_/

" delete trailing whitespace
nnoremap <silent> <Leader>w :%s/\s\+$//<CR>:let @/=''<CR>

" squeeze multiple blank lines
nnoremap <silent> <Leader>W :%s/\(\n\n\)\n\+/\1/<CR>:let @/=''<CR>

" re-hardwrap text
nnoremap <Leader><Return> gqip

" easyalign
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
nnoremap <LocalLeader>j[ vi[<C-v>$:EasyAlign\ g/^\S/<CR>gv=
nnoremap <LocalLeader>j{ vi{<C-v>$:EasyAlign\ g/^\S/<CR>gv=

"                         _           __
"     ____  _________    (_)__  _____/ /______
"    / __ \/ ___/ __ \  / / _ \/ ___/ __/ ___/
"   / /_/ / /  / /_/ / / /  __/ /__/ /_(__  )
"  / .___/_/   \____/_/ /\___/\___/\__/____/
" /_/              /___/
"
"

" tabedit interesting dirs
nnoremap <silent> <Leader>< :vsplit $MYVIMRC<CR>
nnoremap <silent> <Leader>,v :execute ':TP' fnamemodify(resolve(expand($MYVIMRC)), ':h')<CR>
nnoremap <silent> <Leader>,z :TP $ZDOTDIR/.zshrc<CR>

"           _ __
"    ____ _(_) /_
"   / __ `/ / __/
"  / /_/ / / /_
"  \__, /_/\__/
" /____/
"
nnoremap <Leader>gst :Git<CR>
nnoremap <Leader>gci :Git commit<CR>
nnoremap <Leader>gd  :Git diff<CR>
nnoremap <Leader>gl  :Git log<CR>
nnoremap <Leader>gbl :Git blame<CR>


nnoremap <Leader>gw :Gwrite<CR>
nnoremap <Leader>gm :GMove<Space>
nnoremap <Leader>gr :GRename<Space>
nnoremap <Leader>gd :GDelete<CR>

nnoremap <Leader>gbr  :GBrowse<CR>
nnoremap <Leader>gbr! :GBrowse!<CR>

"    ____ ___  (_)_________
"   / __ `__ \/ / ___/ ___/
"  / / / / / / (__  ) /__
" /_/ /_/ /_/_/____/\___/
"

" run macros
nnoremap <Return> @

" In the quickfix window, <CR> is used to jump to the error under the
" cursor, so undefine the mapping there.
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>
