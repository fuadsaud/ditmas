(module config.plugins.spec
  {autoload {packer packer
             a aniseed.core
             nvim aniseed.nvim
             constants config.constants}
   require-macros [config.macros]})

(defn- require-config-module [name]
  (require (a.str :config.plugins. name)))

(defn- config [name]
  (-> name require-config-module (. :config)))

(defn- config-str [name]
  (string.format "require('config.plugins.%s').config()" name))

(def plugins
  {:wbthomason/packer.nvim {}

   :Olical/aniseed {:branch :develop}

   :kburdett/vim-nuuid {}

   :williamboman/nvim-lsp-installer {}
   :neovim/nvim-lspconfig {:config (config-str :lspconfig)
                           :after :nvim-lsp-installer}

   :folke/which-key.nvim {:config (config-str :which-key)}

   ; ansi coloring
   :m00qek/baleia.nvim {:tag "v1.1.0" :config (config-str :baleia)}

   ; integrations
   :wincent/ferret {}

   ; fuzzy search
   :nvim-telescope/telescope.nvim {:requires {:nvim-lua/plenary.nvim {}
                                              :nvim-telescope/telescope-fzf-native.nvim {:run "make"}}
                                   :config (config-str :telescope)}

   ; filesystem
   :tpope/vim-eunuch {}
   :pbrisbin/vim-mkdir {}
   :lambdalisue/suda.vim {}

   ; syntax
   ; :nvim-treesitter/nvim-treesitter {:run ":TSUpdate"
   ;                                   :config (config-str :treesitter)}
   :sheerun/vim-polyglot {}
   ; :p00f/nvim-ts-rainbow {}
   :luochen1990/rainbow {:config (config-str :rainbow)}

   ; completion
   :hrsh7th/nvim-cmp {:requires {:hrsh7th/cmp-nvim-lsp {}
                                 :hrsh7th/cmp-buffer {}
                                 :hrsh7th/cmp-path {}
                                 :hrsh7th/cmp-cmdline {}
                                 :hrsh7th/cmp-vsnip {}
                                 :hrsh7th/vim-vsnip {}
                                 :hrsh7th/vim-vsnip-integ {}
                                 :rafamadriz/friendly-snippets {}
                                 :PaterJason/cmp-conjure {:after :conjure}}
                      :config (config-str :cmp)}


   ; ui
   :junegunn/goyo.vim {}
   :milkypostman/vim-togglelist {}
   :simeji/winresizer {}
   :gregsexton/MatchTag {}
   :nathanaelkane/vim-indent-guides {}
   :jszakmeister/vim-togglecursor {}
   :fuadsaud/vim-airline-themes {}

   :nvim-lualine/lualine.nvim {:requires {:kyazdani42/nvim-web-devicons {}}
                               :config (config-str :lualine)}

   ; workspace mgmt
   :m00qek/nvim-contabs {}

   ; navigation
   :vim-scripts/a.vim {}
   :tpope/vim-vinegar {}
   :tpope/vim-projectionist {}
   :justinmk/vim-gtfo {}
   :justinmk/vim-sneak {}
   :easymotion/vim-easymotion {}

   ; text manipulation
   :tpope/vim-abolish {}
   :tpope/vim-surround {}
   :tpope/vim-ragtag {}
   :tpope/vim-repeat {}
   :tpope/vim-unimpaired {}
   :tpope/vim-commentary {}
   :tpope/vim-endwise {}
   :junegunn/vim-easy-align {}
   :AndrewRadev/splitjoin.vim {}
   :sjl/gundo.vim {}
   :cohama/lexima.vim {}

   ; text objects
   :kana/vim-textobj-user {}
   :fuadsaud/vim-textobj-variable-segment {}
   :tommcdo/vim-exchange {}
   :michaeljsmith/vim-indent-object {}
   :nelstrom/vim-textobj-rubyblock {:ft ["ruby"]}
   :wellle/targets.vim {}
   :vim-scripts/AnsiEsc.vim {}

   ; git
   :tpope/vim-fugitive {}
   :tpope/vim-rhubarb {}
   :airblade/vim-gitgutter {}
   :mattn/gist-vim {:requires {:mattn/webapi-vim {}}}

   ; tmux
   :christoomey/vim-tmux-navigator {}
   :edkolev/tmuxline.vim {}

   ; lisp
   :Olical/conjure {:ft constants.conjure-languages}
   :guns/vim-sexp {:ft constants.sexp-languages}
   :tpope/vim-sexp-mappings-for-regular-people {:ft constants.sexp-languages}
   :eraserhd/parinfer-rust {:ft constants.sexp-languages
                            :run "cargo build --release"}

   ; clojure
   :fuadsaud/vim-salve {:ft ["clojure"]}
   :paulojean/sort-quire.vim {:ft ["clojure"]}

   ; python
   :hynek/vim-python-pep8-indent {:ft ["python"]}

   ; css
   :ap/vim-css-color {}

   ; markdown
   :iamcco/markdown-preview.nvim {:ft ["markdown"]
                                  :run "cd app && yarn install"}

   ; plantuml
   :fuadsaud/vim-slumlord {}

   ; prose
   :dbmrq/vim-ditto {}

   ; colorschemes
   ; :fuadsaud/Monrovia {:branch "v2"}
   "~/Sources/fuadsaud/Monrovia" {}
   :noahfrederick/Hemisu {}
   :haishanh/night-owl.vim {}})
