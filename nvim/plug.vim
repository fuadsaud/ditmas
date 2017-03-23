call plug#begin("~/.local/share/nvim/plugged")

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-abolish'

" git
Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'mattn/gist-vim' | Plug 'mattn/webapi-vim'

" general utilities
Plug 'tpope/vim-vinegar'
Plug 'justinmk/vim-dirvish'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'ctrlpvim/ctrlp.vim' | Plug 'burke/matcher'
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'tpope/vim-projectionist'
Plug 'sjl/gundo.vim'
Plug 'rking/ag.vim'
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
Plug 'tommcdo/vim-lion'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'a.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/goyo.vim'
Plug 'justinmk/vim-gtfo'

" text objects
Plug 'kana/vim-textobj-user'
Plug 'Julian/vim-textobj-variable-segment'
Plug 'tommcdo/vim-exchange'
Plug 'michaeljsmith/vim-indent-object'
Plug 'nelstrom/vim-textobj-rubyblock', { 'for': 'ruby' }
Plug 'wellle/targets.vim'

Plug 'hkupty/nvimux'

" tmux
Plug 'Keithbsmiley/tmux.vim', { 'for': 'tmux' }
Plug 'LnL7/vim-tslime'
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
Plug 'guns/vim-clojure-static',                    { 'for': 'clojure' }
Plug 'guns/vim-clojure-highlight',                 { 'for': 'clojure' }
Plug 'tpope/vim-salve',                            { 'for': 'clojure' }
Plug 'fuadsaud/vim-midje',                         { 'for': 'clojure' }
Plug 'guns/vim-sexp',                              { 'for': 'clojure' }
Plug 'clojure-vim/acid.nvim',                      { 'do': ':UpdateRemotePlugins' }
Plug 'clojure-vim/async-clj-omni',                 { 'for': 'clojure' }
Plug 'tpope/vim-sexp-mappings-for-regular-people', { 'for': 'clojure' }

Plug 'dag/vim2hs',          { 'for': 'haskell' }
Plug 'raichoo/haskell-vim', { 'for': 'haskell' }
Plug 'hspec/hspec.vim',     { 'for': 'haskell' }

" python
Plug 'hynek/vim-python-pep8-indent', { 'for': 'python' }

" javascript
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }

" kotlin
Plug 'udalov/kotlin-vim'

" markup
Plug 'hail2u/vim-css3-syntax',         { 'for': 'css'}
Plug 'othree/html5.vim',               { 'for': 'html' }
Plug 'tpope/vim-markdown',             { 'for': 'markdown'}
Plug 'jtratner/vim-flavored-markdown', { 'for': 'markdown'}

" colorschemes
Plug 'AlessandroYorba/Sidonia'
Plug 'AlessandroYorba/Monrovia', { 'commit': '51ea85c' }
Plug 'taecilla/fairyfloss.vim'
Plug 'zanglg/nova.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'noahfrederick/Hemisu'
Plug 'nanotech/jellybeans.vim'
Plug 'joshdick/onedark.vim'
Plug 'trusktr/seti.vim'
Plug 'flazz/vim-colorschemes'

call plug#end()
