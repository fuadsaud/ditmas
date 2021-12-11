call plug#begin("~/.local/share/nvim/plugged")

" general utilities
Plug 'kburdett/vim-nuuid'

" lsp
Plug 'neovim/nvim-lspconfig'

" ansi coloring
Plug 'm00qek/baleia.nvim', { 'tag': 'v1.1.0' }

" integrations
Plug 'wincent/ferret'
Plug 'nvim-telescope/telescope.nvim' | Plug 'nvim-lua/plenary.nvim' | Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'tpope/vim-eunuch'

" syntax
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'p00f/nvim-ts-rainbow'
" Plug 'luochen1990/rainbow'

" completion
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'PaterJason/cmp-conjure'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" ui
Plug 'junegunn/goyo.vim'
Plug 'milkypostman/vim-togglelist'
Plug 'simeji/winresizer'
Plug 'gregsexton/MatchTag'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'jszakmeister/vim-togglecursor'
Plug 'vim-airline/vim-airline'
Plug 'fuadsaud/vim-airline-themes'

" workspace mgmt
Plug 'm00qek/nvim-contabs'

" navigation
Plug 'vim-scripts/a.vim'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-projectionist'
Plug 'justinmk/vim-gtfo'
Plug 'justinmk/vim-sneak'
Plug 'easymotion/vim-easymotion'

" text manipulation
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'junegunn/vim-easy-align'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'sjl/gundo.vim'
Plug 'windwp/nvim-autopairs'

" text objects
Plug 'kana/vim-textobj-user'
Plug 'fuadsaud/vim-textobj-variable-segment'
Plug 'tommcdo/vim-exchange'
Plug 'michaeljsmith/vim-indent-object'
Plug 'nelstrom/vim-textobj-rubyblock', { 'for': 'ruby' }
Plug 'wellle/targets.vim'
Plug 'vim-scripts/AnsiEsc.vim'

" git
Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'airblade/vim-gitgutter'
Plug 'mattn/gist-vim' | Plug 'mattn/webapi-vim'

" tmux
Plug 'Keithbsmiley/tmux.vim', { 'for': 'tmux' }
Plug 'christoomey/vim-tmux-navigator'
Plug 'edkolev/tmuxline.vim'

" clojure
Plug 'guns/vim-sexp',                              { 'for': 'clojure' }
Plug 'tpope/vim-sexp-mappings-for-regular-people', { 'for': 'clojure' }
Plug 'Olical/conjure'
Plug 'fuadsaud/vim-salve',                         { 'for': 'clojure', 'branch': 'test-unit' }
Plug 'eraserhd/parinfer-rust',                     { 'for': 'clojure', 'do': 'cargo build --release'}
Plug 'paulojean/sort-quire.vim',                   { 'for': 'clojure' }

" fennel
Plug 'bakpakin/fennel.vim'

" haskell
Plug 'dag/vim2hs',          { 'for': 'haskell' }
Plug 'raichoo/haskell-vim', { 'for': 'haskell' }
Plug 'hspec/hspec.vim',     { 'for': 'haskell' }

" python
Plug 'hynek/vim-python-pep8-indent', { 'for': 'python' }

" javascript
Plug 'pangloss/vim-javascript',  { 'for': 'javascript' }
Plug 'mxw/vim-jsx',              { 'for': 'javascript' }

" css
Plug 'ap/vim-css-color',               { 'for': 'css'}
Plug 'iloginow/vim-stylus',            { 'for': 'styl' }

" markdown
Plug 'iamcco/markdown-preview.nvim',   { 'for': 'markdown', 'do': 'cd app && yarn install'  }

" plantuml
Plug 'fuadsaud/vim-slumlord'
Plug 'aklt/plantuml-syntax'

" graphql
Plug 'jparise/vim-graphql'

" lua
Plug 'tbastos/vim-lua'

" prose
Plug 'dbmrq/vim-ditto'

" colorschemes
Plug 'fuadsaud/Monrovia'
Plug 'noahfrederick/Hemisu'
Plug 'haishanh/night-owl.vim'

Plug '$HOME/Sources/fuadsaud/vim-potion'

call plug#end()
