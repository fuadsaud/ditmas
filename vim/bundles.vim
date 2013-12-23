"" Initialize Vundle
set rtp+=~/.vim/bundle/vundle/

call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-speeddating'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-unimpaired'

" git related
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'
Bundle 'mattn/gist-vim'
  Bundle 'mattn/webapi-vim'

" general utilities
Bundle 'bling/vim-airline'
Bundle 'kien/ctrlp.vim'
Bundle 'sjl/gundo.vim'
Bundle 'majutsushi/tagbar'
Bundle 'maxbrunsfeld/vim-yankstack'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'gregsexton/MatchTag'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'yurifury/hexHighlight'
Bundle 'godlygeek/tabular'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
Bundle 'vim-scripts/OmniCppComplete'
Bundle 'lmeijvogel/vim-yaml-helper'
Bundle 'vim-scripts/loremipsum'

" text objects
Bundle 'kana/vim-textobj-user'
Bundle 'Julian/vim-textobj-variable-segment'
Bundle 'tommcdo/vim-exchange'

" tmux integration
Bundle 'LnL7/vim-tslime'
Bundle 'christoomey/vim-tmux-navigator'

" seeing is believing
Bundle 't9md/vim-ruby-xmpfilter'

" languages
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
  Bundle 'stefanoverna/vim-i18n'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-rbenv'
Bundle 'tpope/vim-bundler'
Bundle 'thoughtbot/vim-rspec'

Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'itspriddle/vim-jquery.git'
Bundle 'othree/html5.vim'
Bundle 'tpope/vim-liquid'
Bundle 'nono/vim-handlebars'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'groenewege/vim-less'

Bundle 'jtratner/vim-flavored-markdown.git'

Bundle 'elixir-lang/vim-elixir'
Bundle 'derekwyatt/vim-scala'
Bundle 'jnwhiteh/vim-golang'

" colorschemes
Bundle 'altercation/vim-colors-solarized'
Bundle 'vim-scripts/summerfruit256.vim'
Bundle 'jaromero/vim-monokai-refined'
Bundle 'jpo/vim-railscasts-theme'
Bundle 'croaker/mustang-vim'
Bundle 'noahfrederick/Hemisu'
