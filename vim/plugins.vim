set nocompatible
filetype off

" Initialize Vundle

set rtp+=~/.vim/bundle/Vundle.vim/

call vundle#begin()

Plugin 'gmarik/Vundle.vim'

if !has('nvim')
  Plugin 'tpope/vim-sensible'
endif

Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-abolish'

" git
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'mattn/gist-vim'
Plugin 'mattn/webapi-vim'

" general utilities
Plugin 'tpope/vim-vinegar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'edkolev/tmuxline.vim'
" Plugin 'vim-ctrlspace/vim-ctrlspace'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'burke/matcher'
Plugin 'tpope/vim-projectionist'
Plugin 'amiorin/vim-project'
Plugin 'sjl/gundo.vim'
Plugin 'rking/ag.vim'
Plugin 'majutsushi/tagbar'
Plugin 'maxbrunsfeld/vim-yankstack'
Plugin 'milkypostman/vim-togglelist'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'jszakmeister/vim-togglecursor'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'jaxbot/semantic-highlight.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-eunuch'
Plugin 'gregsexton/MatchTag'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'godlygeek/tabular'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'mattn/emmet-vim'
Plugin 'vim-scripts/OmniCppComplete'
Plugin 'lmeijvogel/vim-yaml-helper'
Plugin 'loremipsum'
Plugin 'a.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'junegunn/goyo.vim'

" text objects
Plugin 'kana/vim-textobj-user'
Plugin 'Julian/vim-textobj-variable-segment'
Plugin 'tommcdo/vim-exchange'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'wellle/targets.vim'

" tmux integration
Plugin 'LnL7/vim-tslime'
Plugin 'christoomey/vim-tmux-navigator'

" ruby
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
  " Plugin 'stefanoverna/vim-i18n'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-bundler'
Plugin 'thoughtbot/vim-rspec'
Plugin 'sunaku/vim-ruby-minitest'
Plugin 'ngmy/vim-rubocop'

" clojure
" Plugin 'guns/vim-clojure-static'
Plugin 'guns/vim-clojure-highlight'
Plugin 'tpope/vim-salve'
Plugin 'tpope/vim-classpath'
Plugin 'tpope/vim-fireplace'
Plugin 'gregspurrier/vim-midje'
Plugin 'guns/vim-sexp'
Plugin 'tpope/vim-sexp-mappings-for-regular-people'

"haskell
Plugin 'dag/vim2hs'
Plugin 'raichoo/haskell-vim'
Plugin 'hspec/hspec.vim'

" python
Plugin 'hynek/vim-python-pep8-indent'

" javascript
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'fuadsaud/vim-react-snippets'
Plugin 'kchmck/vim-coffee-script'
Plugin 'itspriddle/vim-jquery'

"typescript
Plugin 'HerringtonDarkholme/yats.vim'

"java
Plugin 'tfnico/vim-gradle'

" stylesheets
Plugin 'hail2u/vim-css3-syntax'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'groenewege/vim-less'

Plugin 'elixir-lang/vim-elixir'
Plugin 'derekwyatt/vim-scala'
Plugin 'jnwhiteh/vim-golang'
Plugin 'othree/html5.vim'
Plugin 'tpope/vim-liquid'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'slim-template/vim-slim'
Plugin 'tpope/vim-cucumber'
Plugin 'Keithbsmiley/tmux.vim'
Plugin 'tpope/vim-markdown'
Plugin 'jtratner/vim-flavored-markdown'
Plugin 'gorodinskiy/vim-coloresque'

" colorschemes
Plugin 'taecilla/fairyfloss.vim'
Plugin 'zanglg/nova.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'noahfrederick/Hemisu'
Plugin 'nanotech/jellybeans.vim'
Plugin 'joshdick/onedark.vim'
Plugin 'trusktr/seti.vim'
Plugin 'flazz/vim-colorschemes'

call vundle#end()

filetype plugin indent on
