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

nmap oo o<Esc>
nmap OO O<Esc>

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

" emacs motion bindings
inoremap <C-A> <Home>
inoremap <C-B> <Left>
inoremap <C-E> <End>
inoremap <C-F> <Right>

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
map <Leader>m :tabnew<CR>:tcd ../

map <Leader>, :tabedit ~/.vimrc<CR>
map <Leader>< :tabedit ~/.vim<CR>
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

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

call togglebg#map('<F5>')
