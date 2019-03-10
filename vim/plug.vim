call plug#begin("~/.vim/plugged")

Plug 'tpope/vim-sensible'
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
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim' | Plug 'burke/matcher'
Plug 'tpope/vim-projectionist'
Plug 'rking/ag.vim'
Plug 'milkypostman/vim-togglelist'
Plug 'terryma/vim-multiple-cursors'
Plug 'luochen1990/rainbow'
Plug 'jaxbot/semantic-highlight.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'gregsexton/MatchTag'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'junegunn/vim-easy-align'
Plug 'vim-scripts/a.vim'
Plug 'editorconfig/editorconfig-vim'

" text objects
Plug 'kana/vim-textobj-user'
Plug 'Julian/vim-textobj-variable-segment'
Plug 'tommcdo/vim-exchange'
Plug 'michaeljsmith/vim-indent-object'
Plug 'nelstrom/vim-textobj-rubyblock', { 'for': 'ruby' }
Plug 'wellle/targets.vim'

" tmux
Plug 'Keithbsmiley/tmux.vim', { 'for': 'tmux' }
Plug 'LnL7/vim-tslime'
Plug 'christoomey/vim-tmux-navigator'

" ruby
Plug 'vim-ruby/vim-ruby'

" clojure
Plug 'tpope/vim-fireplace'
Plug 'guns/vim-clojure-static',                    { 'for': 'clojure' }
Plug 'guns/vim-clojure-highlight',                 { 'for': 'clojure' }
Plug 'tpope/vim-salve',                            { 'for': 'clojure' }
Plug 'fuadsaud/vim-midje',                         { 'for': 'clojure' }
Plug 'guns/vim-sexp',                              { 'for': 'clojure' }
Plug 'tpope/vim-sexp-mappings-for-regular-people', { 'for': 'clojure' }

"haskell
Plug 'dag/vim2hs',          { 'for': 'haskell' }

" python
Plug 'hynek/vim-python-pep8-indent', { 'for': 'python' }

" javascript
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }

" markup
Plug 'hail2u/vim-css3-syntax',         { 'for': 'css'}
Plug 'othree/html5.vim',               { 'for': 'html' }
Plug 'tpope/vim-markdown',             { 'for': 'markdown'}
Plug 'jtratner/vim-flavored-markdown', { 'for': 'markdown'}

" colorschemes
Plug 'AlessandroYorba/Monrovia', { 'commit': '51ea85c' }
Plug 'altercation/vim-colors-solarized'
Plug 'flazz/vim-colorschemes'

call plug#end()
