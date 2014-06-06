set nocompatible
filetype off

" Initialize Vundle

set rtp+=~/.vim/bundle/Vundle.vim/

call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-unimpaired'

" git
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'mattn/gist-vim'
  Plugin 'mattn/webapi-vim'

" general utilities
Plugin 'tpope/vim-vinegar'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'sjl/gundo.vim'
Plugin 'rking/ag.vim'
Plugin 'majutsushi/tagbar'
Plugin 'maxbrunsfeld/vim-yankstack'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'gregsexton/MatchTag'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'yurifury/hexHighlight'
Plugin 'godlygeek/tabular'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'vim-scripts/OmniCppComplete'
Plugin 'lmeijvogel/vim-yaml-helper'
Plugin 'loremipsum'
Plugin 'a.vim'

" text objects
Plugin 'kana/vim-textobj-user'
Plugin 'Julian/vim-textobj-variable-segment'
Plugin 'tommcdo/vim-exchange'

" tmux integration
Plugin 'LnL7/vim-tslime'
Plugin 'christoomey/vim-tmux-navigator'

" seeing is believing
Plugin 't9md/vim-ruby-xmpfilter'

" ruby
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rbenv'
Plugin 'tpope/vim-rails'
  Plugin 'stefanoverna/vim-i18n'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-bundler'
Plugin 'thoughtbot/vim-rspec'

" clojure
Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-fireplace'

Plugin 'elixir-lang/vim-elixir'
Plugin 'derekwyatt/vim-scala'
Plugin 'jnwhiteh/vim-golang'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'itspriddle/vim-jquery.git'
Plugin 'othree/html5.vim'
Plugin 'tpope/vim-liquid'
Plugin 'nono/vim-handlebars'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'groenewege/vim-less'
Plugin 'tpope/vim-cucumber'

Plugin 'tpope/vim-markdown'
Plugin 'jtratner/vim-flavored-markdown.git'

" colorschemes
Plugin 'altercation/vim-colors-solarized'
Plugin 'summerfruit256.vim'
Plugin 'jaromero/vim-monokai-refined'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'croaker/mustang-vim'
Plugin 'noahfrederick/Hemisu'
Plugin 'flazz/vim-colorschemes'

call vundle#end()

filetype plugin indent on
