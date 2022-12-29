(module config.plugins
  {autoload {a aniseed.core
             nvim aniseed.nvim
             packer lib.packer
             constants config.constants}})

(defn- config-str [name]
  (string.format "require('config.plugins.%s').config()" name))

(def plugins-spec
  {:wbthomason/packer.nvim {}

   :Olical/aniseed {:branch :develop}

   :kburdett/vim-nuuid {}

   :tpope/vim-scriptease {}

   :neovim/nvim-lspconfig {:config (config-str :lspconfig)
                           :requires {:williamboman/mason-lspconfig.nvim {}
                                      :williamboman/mason.nvim {}}}

   :folke/which-key.nvim {:config (config-str :which-key)}

   ; ansi coloring
   :vim-scripts/AnsiEsc.vim {}
   :m00qek/baleia.nvim {:tag "v1.1.0" :config (config-str :baleia)}

   ; integrations
   :wincent/ferret {}

   ; filesystem
   :tpope/vim-eunuch {}
   :pbrisbin/vim-mkdir {}
   :lambdalisue/suda.vim {}

   ; syntax
   :nvim-treesitter/nvim-treesitter {:run ":TSUpdate"
                                     :config (config-str :treesitter)}
   :p00f/nvim-ts-rainbow {}

   :sheerun/vim-polyglot {}
   :luochen1990/rainbow {:config (config-str :rainbow)}

   :norcalli/nvim-colorizer.lua {:config (config-str :colorizer)}

   ; text manipulation
   :tpope/vim-abolish {:cond "true" ; see https://github.com/wbthomason/packer.nvim/issues/393
                       :config (config-str :abolish)}
   :tpope/vim-surround {}
   :tpope/vim-ragtag {}
   :tpope/vim-repeat {}
   :tpope/vim-unimpaired {}
   :tpope/vim-commentary {}
   :tpope/vim-endwise {}
   :junegunn/vim-easy-align {}
   :AndrewRadev/splitjoin.vim {:config (config-str :splitjoin)}
   :sjl/gundo.vim {}
   :windwp/nvim-autopairs {:config (config-str :autopairs)}
   :windwp/nvim-ts-autotag {}

   ; text objects
   :kana/vim-textobj-user {}
   :fuadsaud/vim-textobj-variable-segment {}
   :tommcdo/vim-exchange {}
   :michaeljsmith/vim-indent-object {}
   :nelstrom/vim-textobj-rubyblock {:ft ["ruby"]}
   :wellle/targets.vim {}

   ; snippets
   :L3MON4D3/LuaSnip {:config (config-str :luasnip)
                      :requires {:saadparwaiz1/cmp_luasnip {}
                                 :rafamadriz/friendly-snippets {}}}


   ; completion
   :hrsh7th/nvim-cmp {:requires {:hrsh7th/cmp-nvim-lsp {}
                                 :hrsh7th/cmp-buffer {}
                                 :hrsh7th/cmp-path {}
                                 :hrsh7th/cmp-cmdline {}
                                 :PaterJason/cmp-conjure {:after :conjure}}
                      :config (config-str :cmp)}

   ; ui
   :junegunn/goyo.vim {}
   :milkypostman/vim-togglelist {}
   :simeji/winresizer {}
   :gregsexton/MatchTag {}
   :nathanaelkane/vim-indent-guides {}
   :jszakmeister/vim-togglecursor {}

   :nvim-lualine/lualine.nvim {:requires {:kyazdani42/nvim-web-devicons {}}
                               :config (config-str :lualine)}

   :folke/trouble.nvim {:requires {:kyazdani42/nvim-web-devicons {}}
                        :config (config-str :trouble)}
   ; fuzzy search
   :nvim-telescope/telescope.nvim {:requires {:nvim-lua/plenary.nvim {}
                                              :nvim-telescope/telescope-fzf-native.nvim {:run "make"}
                                              :nvim-telescope/telescope-ui-select.nvim {}}
                                   :config (config-str :telescope)}

   ; workspace mgmt
   :m00qek/nvim-contabs {:requires {:junegunn/fzf {}}}
   :fuadsaud/rhizome.nvim {:config (config-str :rhizome)}
   :nvim-telescope/telescope-project.nvim {}

   ; navigation
   :vim-scripts/a.vim {}
   :nvim-telescope/telescope-file-browser.nvim {}
   :tpope/vim-vinegar {}
   :tpope/vim-projectionist {}
   :justinmk/vim-gtfo {}
   :ggandor/lightspeed.nvim {}

   ; git
   :tpope/vim-fugitive {}
   :tpope/vim-rhubarb {}
   :airblade/vim-gitgutter {}
   :mattn/gist-vim {:requires {:mattn/webapi-vim {}}}

   ; tmux
   :christoomey/vim-tmux-navigator {}
   :edkolev/tmuxline.vim {}

   ; lisp
   :Olical/conjure {}
   :guns/vim-sexp {:config (config-str :sexp)}

   :tpope/vim-sexp-mappings-for-regular-people {}
   :eraserhd/parinfer-rust {:run "cargo build --release"}

   ; clojure
   :fuadsaud/vim-salve {:ft ["clojure"]}
   :paulojean/sort-quire.vim {:ft ["clojure"]}

   ; python
   :hynek/vim-python-pep8-indent {:ft ["python"]}

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
   :rose-pine/neovim {:as :rose-pine}
   :noahfrederick/Hemisu {}
   :haishanh/night-owl.vim {}})

(defn init []
  (packer.init plugins-spec))

(comment
  (init))
