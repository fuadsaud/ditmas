call plug#begin("~/.vim/plugged")

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-abolish'

Plug 'sheerun/vim-polyglot'

" git
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
Plug 'christoomey/vim-tmux-navigator'

" clojure
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-salve',                            { 'for': 'clojure' }
Plug 'guns/vim-sexp',                              { 'for': 'clojure' }
Plug 'tpope/vim-sexp-mappings-for-regular-people', { 'for': 'clojure' }

" python
Plug 'hynek/vim-python-pep8-indent', { 'for': 'python' }

" colorschemes
Plug 'fuadsaud/Monrovia'
Plug 'altercation/vim-colors-solarized'
Plug 'flazz/vim-colorschemes'

call plug#end()
