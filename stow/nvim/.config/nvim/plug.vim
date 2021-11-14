call plug#begin("~/.local/share/nvim/plugged")

" general utilities
Plug 'kburdett/vim-nuuid'

" lsp
" Plug 'w0rp/ale'
Plug 'neovim/nvim-lspconfig'
" Plug 'nvim-lua/completion-nvim'
" Plug 'nvim-lua/diagnostic-nvim'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" ansi coloring
Plug 'm00qek/baleia.nvim', { 'tag': 'v1.1.0' }

" integrations
Plug 'wincent/ferret'
Plug 'tpope/vim-eunuch'
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
Plug 'editorconfig/editorconfig-vim'

" ui
Plug 'junegunn/goyo.vim'
Plug 'milkypostman/vim-togglelist'
Plug 'simeji/winresizer'
Plug 'gregsexton/MatchTag'
Plug 'luochen1990/rainbow'
Plug 'jaxbot/semantic-highlight.vim'
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
Plug 'terryma/vim-multiple-cursors'
Plug 'sjl/gundo.vim'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/neco-vim'

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

" ruby
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails',          { 'for': 'ruby' }
Plug 'stefanoverna/vim-i18n',    { 'for': 'ruby' }
Plug 'tpope/vim-rake',           { 'for': 'ruby' }
Plug 'tpope/vim-bundler',        { 'for': 'ruby' }
Plug 'thoughtbot/vim-rspec',     { 'for': 'ruby' }
Plug 'sunaku/vim-ruby-minitest', { 'for': 'ruby' }
Plug 'ngmy/vim-rubocop',         { 'for': 'ruby' }

" clojure
Plug 'guns/vim-sexp',                              { 'for': 'clojure' }
Plug 'tpope/vim-sexp-mappings-for-regular-people', { 'for': 'clojure' }
" Plug 'tpope/vim-fireplace',                        { 'for': 'clojure' }
Plug 'venantius/vim-cljfmt',                       { 'for': 'clojure' }
Plug 'Olical/conjure'
Plug 'fuadsaud/vim-salve',                         { 'for': 'clojure', 'branch': 'test-unit' }
Plug 'fuadsaud/vim-clojure-static',                { 'for': 'clojure' }
Plug 'fuadsaud/vim-midje',                         { 'for': 'clojure', 'branch': 'fix-lispwords' }
Plug 'fuadsaud/vim-postman-clj',                   { 'for': 'clojure' }
Plug 'eraserhd/parinfer-rust',                     { 'for': 'clojure', 'do': 'cargo build --release'}
" Plug 'clojure-vim/async-clj-highlight',            { 'for': 'clojure' }
Plug 'paulojean/sort-quire.vim',                   { 'for': 'clojure' }

" Fennel
Plug 'bakpakin/fennel.vim'

" haskell
Plug 'dag/vim2hs',          { 'for': 'haskell' }
Plug 'raichoo/haskell-vim', { 'for': 'haskell' }
Plug 'hspec/hspec.vim',     { 'for': 'haskell' }

" python
Plug 'hynek/vim-python-pep8-indent', { 'for': 'python' }

" javascript
Plug 'pangloss/vim-javascript',  { 'for': 'javascript' }
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
Plug 'mxw/vim-jsx',              { 'for': 'javascript' }

" kotlin
Plug 'udalov/kotlin-vim',        { 'for': 'kotlin' }

" markup
Plug 'mattn/emmet-vim'
Plug 'JulesWang/css.vim',              { 'for': 'css'}
Plug 'ap/vim-css-color',               { 'for': 'css'}
Plug 'iloginow/vim-stylus',            { 'for': 'styl' }
Plug 'hail2u/vim-css3-syntax',         { 'for': 'css'}
Plug 'othree/html5.vim',               { 'for': 'html' }
" Plug 'tpope/vim-markdown',             { 'for': 'markdown'}
" Plug 'jtratner/vim-flavored-markdown', { 'for': 'markdown'}
" Plug 'plasticboy/vim-markdown',        { 'for': 'markdown' }
Plug 'iamcco/markdown-preview.nvim',   { 'for': 'markdown', 'do': 'cd app && yarn install'  }
Plug 'fuadsaud/vim-slumlord'
Plug 'aklt/plantuml-syntax'

" graphql
Plug 'jparise/vim-graphql'

" dart
Plug 'dart-lang/dart-vim-plugin'

" nginx
Plug 'chr4/nginx.vim'

" prose
Plug 'dbmrq/vim-ditto'

" colorschemes
Plug 'dylanaraps/wal.vim'
Plug 'fuadsaud/Monrovia'
Plug 'taecilla/fairyfloss.vim'
Plug 'zanglg/nova.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'lifepillar/vim-solarized8'
Plug 'noahfrederick/Hemisu'
Plug 'nanotech/jellybeans.vim'
Plug 'joshdick/onedark.vim'
Plug 'trusktr/seti.vim'
Plug 'flazz/vim-colorschemes'
Plug 'haishanh/night-owl.vim'
Plug 'fuadsaud/vim-wsd'

Plug '$HOME/Sources/fuadsaud/vim-potion'

Plug 'johngrib/vim-game-code-break'

call plug#end()
