(module config.plugins
  {autoload {packer packer
             a aniseed.core
             nvim aniseed.nvim
             constants config.constants}
   require-macros [config.macros]})

(defn- require-config-module [name]
  (require (a.str :config.plugins. name)))

(defn- setup [name]
  (-> name require-config-module (. :setup)))

(def plugins
  {:wbthomason/packer.nvim {}

   :Olical/aniseed {:branch :develop}

   :kburdett/vim-nuuid {}

   :neovim/nvim-lspconfig {:config (setup :lsp)}


   :folke/which-key.nvim {:config (setup :which-key)}

   ; ansi coloring
   :m00qek/baleia.nvim {:tag "v1.1.0"}

   ; integrations
   :wincent/ferret {}

   ; fuzzy search
   :nvim-telescope/telescope.nvim {:requires {:nvim-lua/plenary.nvim {}
                                              :nvim-telescope/telescope-fzf-native.nvim {:run "make"}}
                                   :config (setup :telescope)}

   ; filesystem
   :tpope/vim-eunuch {}
   :pbrisbin/vim-mkdir {}

   ; syntax
   :nvim-treesitter/nvim-treesitter {:run ":TSUpdate"
                                     :config (setup :treesitter)}
   :sheerun/vim-polyglot {}
   :p00f/nvim-ts-rainbow {}

   ; completion
   :hrsh7th/nvim-cmp {:requires {:hrsh7th/cmp-nvim-lsp {}
                                 :hrsh7th/cmp-buffer {}
                                 :hrsh7th/cmp-path {}
                                 :hrsh7th/cmp-cmdline {}
                                 :hrsh7th/cmp-vsnip {}
                                 :hrsh7th/vim-vsnip {}
                                 :hrsh7th/vim-vsnip-integ {}
                                 :rafamadriz/friendly-snippets {}
                                 :PaterJason/cmp-conjure {:after "conjure"}}
                      :config (setup :cmp)}


   ; ui
   :junegunn/goyo.vim {}
   :milkypostman/vim-togglelist {}
   :simeji/winresizer {}
   :gregsexton/MatchTag {}
   :nathanaelkane/vim-indent-guides {}
   :jszakmeister/vim-togglecursor {}
   ; :vim-airline/vim-airline {}
   :fuadsaud/vim-airline-themes {}

   :nvim-lualine/lualine.nvim {:requires {:kyazdani42/nvim-web-devicons {}}
                               :config (setup :lualine)}

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
   :windwp/nvim-autopairs {:config (setup :autopairs)}

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

(defn- log [x]
  (a.println x))

(defn- pair-to-plugin [[name opts]]
  (a.assoc opts 1 name))

(defn- adapt-requires [opts]
  (if opts.requires
    (a.update opts :requires (partial a.map-indexed pair-to-plugin))
    opts))

(defn- adapt-plugin [[name opts]]
  (pair-to-plugin [name (adapt-requires opts)]))

(defn- adapt-plugins [plugins]
  (a.map-indexed adapt-plugin plugins))

(defn- use-all [plugins]
  (each [_ plugin (ipairs (adapt-plugins plugins))]
    (packer.use plugin)))

(defn init []
  (packer.init {:max_jobs 50})

  (use-all plugins))

(comment
  (init))
