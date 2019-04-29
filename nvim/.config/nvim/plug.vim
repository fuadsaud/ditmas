call plug#begin("~/.local/share/nvim/plugged")

" general utilities
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-vinegar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
" Plug '~/.fzf' | Plug 'junegunn/fzf.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'tpope/vim-projectionist'
Plug 'm00qek/nvim-contabs'
Plug 'sjl/gundo.vim'
Plug 'mileszs/ack.vim'
Plug 'milkypostman/vim-togglelist'
Plug 'terryma/vim-multiple-cursors'
Plug 'jszakmeister/vim-togglecursor'
Plug 'luochen1990/rainbow'
Plug 'jaxbot/semantic-highlight.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'gregsexton/MatchTag'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'junegunn/vim-easy-align'
Plug 'justinmk/vim-sneak'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'vim-scripts/a.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/goyo.vim'
Plug 'justinmk/vim-gtfo'
Plug 'simeji/winresizer'
Plug 'kburdett/vim-nuuid'
Plug 'w0rp/ale'
Plug 'ludovicchabant/vim-gutentags'
Plug 'BurningEther/iron.nvim', { 'do': ':UpdateRemotePlugins' }
" text objects
Plug 'kana/vim-textobj-user'
Plug 'Julian/vim-textobj-variable-segment'
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
Plug 'jreybert/vimagit'
Plug 'mattn/gist-vim' | Plug 'mattn/webapi-vim'

" tmux
Plug 'Keithbsmiley/tmux.vim', { 'for': 'tmux' }
Plug 'LnL7/vim-tslime'
Plug 'christoomey/vim-tmux-navigator'
Plug 'edkolev/tmuxline.vim'
Plug 'hkupty/nvimux'

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
Plug 'tpope/vim-fireplace'
Plug 'fuadsaud/vim-clojure-static',                { 'for': 'clojure' }
Plug 'clojure-vim/async-clj-highlight',            { 'for': 'clojure' }
Plug 'tpope/vim-salve',                            { 'for': 'clojure', 'commit': 'a0dc869' }
Plug 'fuadsaud/vim-midje',                         { 'for': 'clojure', 'branch': 'fix-lispwords' }
Plug 'fuadsaud/vim-postman-clj',                   { 'for': 'clojure' }
Plug 'guns/vim-sexp',                              { 'for': 'clojure' }
Plug 'tpope/vim-sexp-mappings-for-regular-people', { 'for': 'clojure' }
Plug 'clojure-vim/acid.nvim',                      { 'do': ':UpdateRemotePlugins' }
Plug 'clojure-vim/clj-refactor.nvim',              { 'do': 'clojure' }
Plug 'clojure-vim/async-clj-omni',                 { 'for': 'clojure' }
Plug 'paulojean/sort-quire.vim',                   { 'for': 'clojure' }
Plug 'eraserhd/parinfer-rust',                     { 'for': 'clojure', 'do': 'cargo build --release'}

" haskell
Plug 'dag/vim2hs',          { 'for': 'haskell' }
Plug 'raichoo/haskell-vim', { 'for': 'haskell' }
Plug 'hspec/hspec.vim',     { 'for': 'haskell' }

" python
Plug 'hynek/vim-python-pep8-indent', { 'for': 'python' }

" javascript
Plug 'pangloss/vim-javascript'
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
Plug 'mxw/vim-jsx'

" kotlin
Plug 'udalov/kotlin-vim'

" markup
Plug 'mattn/emmet-vim'
Plug 'JulesWang/css.vim'
Plug 'ap/vim-css-color'
Plug 'hail2u/vim-css3-syntax',         { 'for': 'css'}
Plug 'othree/html5.vim',               { 'for': 'html' }
Plug 'tpope/vim-markdown',             { 'for': 'markdown'}
Plug 'jtratner/vim-flavored-markdown', { 'for': 'markdown'}

" prose
Plug 'dbmrq/vim-ditto'

" colorschemes
Plug 'dylanaraps/wal.vim'
Plug 'fuadsaud/OldMonrovia', { 'branch': 'old-monrovia' }
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

" Plug $NU_HOME.'/nudev/ides/nvim'

call plug#end()