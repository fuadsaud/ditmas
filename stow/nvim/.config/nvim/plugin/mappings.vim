" keymaps
" interesting unused keys in normal mode:
"   - + (testing for aux <LocalLeader>)
"   - _
"   - \
"   - |
"   - <Del>
"   - Q (testing for running macros)

"     __               __
"    / /__  ____ _____/ /__  _____
"   / / _ \/ __ `/ __  / _ \/ ___/
"  / /  __/ /_/ / /_/ /  __/ /
" /_/\___/\__,_/\__,_/\___/_/
"

map <Space> <Nop>
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
inoremap <C-Y> <Esc>Pa

" write buffer on C-s
inoremap <C-s> <Esc>:w<CR>a
nnoremap <C-s> :w<CR>
nnoremap g<C-s> :w<CR>  

"                       _             __
"    ____  ____ __   __(_)___ _____ _/ /____
"   / __ \/ __ `/ | / / / __ `/ __ `/ __/ _ \
"  / / / / /_/ /| |/ / / /_/ / /_/ / /_/  __/
" /_/ /_/\__,_/ |___/_/\__, /\__,_/\__/\___/
"                     /____/

" switch between the last two buffers
nnoremap <Leader>c <C-^>
map <X1Release> <C-o>
map <X2Release> <C-i>


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
noremap gV `[v`]

"                               __
"    ________  ____ ___________/ /_
"   / ___/ _ \/ __ `/ ___/ ___/ __ \
"  (__  )  __/ /_/ / /  / /__/ / / /
" /____/\___/\__,_/_/   \___/_/ /_/
"

" default / to perl-style regexp's
nnoremap / /\v
vnoremap / /\v

" remove highligted terms
nnoremap <silent> <Leader><Esc> <cmd>noh<CR>

"     ____      __    __
"    / __/___  / /___/ /
"   / /_/ __ \/ / __  /
"  / __/ /_/ / / /_/ /
" /_/  \____/_/\__,_/
"

" set fold methods
nnoremap <Leader>zf <cmd>set fdm=manual<CR>
nnoremap <Leader>zi <cmd>set fdm=indent<CR>
nnoremap <Leader>zm <cmd>set fdm=marker<CR>
nnoremap <Leader>zs <cmd>set fdm=syntax<CR>
nnoremap <Leader>zd <cmd>set fdm=diff<CR>

" opens/closes folds
nnoremap z<Space> zA

"
"    _________  __  _______________
"   / ___/ __ \/ / / / ___/ ___/ _ \
"  (__  ) /_/ / /_/ / /  / /__/  __/
" /____/\____/\__,_/_/   \___/\___/
"

" source
nnoremap <Leader>si <cmd>source $MYVIMRC<CR>
nnoremap <Leader>so <cmd>source %<CR>

"            __    _ __
"  _      __/ /_  (_) /____  _________  ____ _________
" | | /| / / __ \/ / __/ _ \/ ___/ __ \/ __ `/ ___/ _ \
" | |/ |/ / / / / / /_/  __(__  ) /_/ / /_/ / /__/  __/
" |__/|__/_/ /_/_/\__/\___/____/ .___/\__,_/\___/\___/
"                             /_/

" delete trailing whitespace
nnoremap <silent> <Leader>w <cmd>%s/\s\+$//<CR>:let @/=''<CR>

" squeeze multiple blank lines
nnoremap <silent> <Leader>W <cmd>%s/\(\n\n\)\n\+/\1/<CR>:let @/=''<CR>

" easyalign
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
nnoremap <LocalLeader>j[ vi[<C-v>$:EasyAlign\ g/^\S/<CR>gv=
nnoremap <LocalLeader>j{ vi{<C-v>$:EasyAlign\ g/^\S/<CR>gv=

"    __       __
"   / /____  / /__  ______________  ____  ___
"  / __/ _ \/ / _ \/ ___/ ___/ __ \/ __ \/ _ \
" / /_/  __/ /  __(__  ) /__/ /_/ / /_/ /  __/
" \__/\___/_/\___/____/\___/\____/ .___/\___/
"                               /_/
"

" telescope
nnoremap <C-p>       <cmd>Telescope find_files   theme=ivy<CR>
nnoremap <Leader>fb  <cmd>Telescope buffers      theme=ivy<CR>
nnoremap <Leader>fg  <cmd>Telescope live_grep    theme=ivy<CR>
nnoremap <Leader>fh  <cmd>Telescope help_tags    theme=ivy<CR>
nnoremap <Leader>fc  <cmd>Telescope colorschemes theme=ivy<CR>
nnoremap <Leader>fdd <cmd>Telescope diagnostics  theme=ivy bufnr=0<CR>
nnoremap <Leader>fwd <cmd>Telescope diagnostics  theme=ivy<CR>
nnoremap <Leader>ft  <cmd>Telescope treesitter   theme=ivy<CR>
nnoremap <Leader>ff  <cmd>Telescope file_browser theme=ivy path=%:p:h select_buffer=true<CR>

"                         _           __
"     ____  _________    (_)__  _____/ /______
"    / __ \/ ___/ __ \  / / _ \/ ___/ __/ ___/
"   / /_/ / /  / /_/ / / /  __/ /__/ /_(__  )
"  / .___/_/   \____/_/ /\___/\___/\__/____/
" /_/              /___/
"
"

" tabedit interesting dirs
nnoremap <silent> <Leader>,v <cmd>lua require("rhizome").open_in_new_tab(vim.fn.fnamemodify(vim.fn.resolve(vim.fn.expand(os.getenv("MYVIMRC"))), ':h'))<CR>
nnoremap <silent> <Leader>,z <cmd>lua require("rhizome").open_in_new_tab(os.getenv("ZDOTDIR"))<CR>

nnoremap <silent> <Leader>p <cmd>Telescope rhizome roots<CR>
nnoremap <silent> <Leader>b <cmd>Telescope buffers only_cwd=true<CR>

"           _ __
"    ____ _(_) /_
"   / __ `/ / __/
"  / /_/ / / /_
"  \__, /_/\__/
" /____/
"
nnoremap <Leader>gst <cmd>Git<CR>
nnoremap <Leader>gci <cmd>Git commit<CR>
nnoremap <Leader>gd  <cmd>Git diff<CR>
nnoremap <Leader>gl  <cmd>Git log<CR>
nnoremap <Leader>gbl <cmd>Git blame<CR>


nnoremap <Leader>gw <cmd>Gwrite<CR>
nnoremap <Leader>gm <cmd>GMove<Space>
nnoremap <Leader>gr <cmd>GRename<Space>
nnoremap <Leader>gd <cmd>GDelete<CR>

nnoremap <Leader>gbr  <cmd>GBrowse<CR>
nnoremap <Leader>gbr! <cmd>GBrowse!<CR>

"        ___                              __  _
"   ____/ (_)___ _____ _____  ____  _____/ /_(_)_________
"  / __  / / __ `/ __ `/ __ \/ __ \/ ___/ __/ / ___/ ___/
" / /_/ / / /_/ / /_/ / / / / /_/ (__  ) /_/ / /__(__  )
" \__,_/_/\__,_/\__, /_/ /_/\____/____/\__/_/\___/____/
"              /____/
"

nnoremap [d         <cmd>lua vim.diagnostic.goto_prev()<CR>
nnoremap ]d         <cmd>lua vim.diagnostic.goto_next()<CR>
nnoremap <Leader>df <cmd>lua vim.diagnostic.open_float({source=true})<CR>
nnoremap <Leader>dl <cmd>lua vim.diagnostic.setloclist()<CR>

"    __                   __    __
"   / /__________  __  __/ /_  / /__
"  / __/ ___/ __ \/ / / / __ \/ / _ \
" / /_/ /  / /_/ / /_/ / /_/ / /  __/
" \__/_/   \____/\__,_/_.___/_/\___/
"

nnoremap <Leader>xx <cmd>Trouble diagnostics toggle<CR>
nnoremap <Leader>xX <cmd>Trouble diagnostics toggle filter.buf=0<CR>
nnoremap <Leader>xd <cmd>Trouble lsp toggle focus=false win.position=right<CR>
nnoremap <Leader>xs <cmd>Trouble symbols toggle focus=false<CR>
nnoremap <Leader>xq <cmd>Trouble qflist toggle<CR>
nnoremap <Leader>xl <cmd>Trouble loclist toggle<CR>

nnoremap ]x <cmd>lua require("trouble").next({skip_groups = true, jump = true});<CR>
nnoremap [x <cmd>lua require("trouble").previous({skip_groups = true, jump = true});<CR>

"    __                      _ __  __
"   / /_________  ___  _____(_) /_/ /____  _____
"  / __/ ___/ _ \/ _ \/ ___/ / __/ __/ _ \/ ___/
" / /_/ /  /  __/  __(__  ) / /_/ /_/  __/ /
" \__/_/   \___/\___/____/_/\__/\__/\___/_/
"

nnoremap <Leader>th <cmd>TSHighlightCapturesUnderCursor<CR>
nnoremap <Leader>tn <cmd>TSNodeUnderCursor<CR>

"
"    ____ ___  (_)_________
"   / __ `__ \/ / ___/ ___/
"  / / / / / / (__  ) /__
" /_/ /_/ /_/_/____/\___/
"

" run macros
nnoremap Q @
nnoremap <Leader>lspi <cmd>LspInfo<CR>
nnoremap <Leader>lspr <cmd>LspRestart<CR>

"     __
"    / /___ _____  __  __
"   / / __ `/_  / / / / /
"  / / /_/ / / /_/ /_/ /
" /_/\__,_/ /___/\__, /
"               /____/

nnoremap <Leader><Bslash> <cmd>Lazy<CR>

"     __                       _
"    / /_  ______ __________  (_)___
"   / / / / / __ `/ ___/ __ \/ / __ \
"  / / /_/ / /_/ (__  ) / / / / /_/ /
" /_/\__,_/\__,_/____/_/ /_/_/ .___/
"                           /_/
"
" press <Tab> to expand or jump in a snippet. These can also be mapped separately
" via <Plug>luasnip-expand-snippet and <Plug>luasnip-jump-next.
imap <silent><expr> <C-j> luasnip#expandable() ? '<Plug>luasnip-expand-snippet' : '<C-j>'
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'
inoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<CR>
snoremap <silent> <Tab>   <cmd>lua require('luasnip').jump(1)<CR>
snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<CR>

" For changing choices in choiceNodes (not strictly necessary for a basic setup).
imap <silent><expr> <C-e> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-e>'
smap <silent><expr> <C-e> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-e>'

imap <C-n> <cmd>lua require('cmp').complete()<CR>
"                _      __   _____
"   ____ ___  __(_)____/ /__/ __(_)  __
"  / __ `/ / / / / ___/ //_/ /_/ / |/_/
" / /_/ / /_/ / / /__/ ,< / __/ />  <
" \__, /\__,_/_/\___/_/|_/_/ /_/_/|_|
"   /_/

nnoremap <Leader>q <cmd>lua require('lib.qfloc').toggle('c')<CR>

" In the quickfix window, <CR> is used to jump to the error under the
" cursor, so undefine the mapping there.
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>

nnoremap - <cmd>Oil<CR>

nnoremap <Leader>gf :hide :edit %:h/
