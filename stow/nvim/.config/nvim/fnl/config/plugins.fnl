(local {: autoload} (require :nfnl.module))
(local lazy (autoload :lazy))
(local nfnl-core (autoload :nfnl.core))

(local specs
  {; meta
   :tpope/vim-scriptease {}
   :folke/which-key.nvim {:config true}
   :folke/neodev.nvim {}
   :Olical/nfnl {}
   :Olical/conjure {:main :config.plugins.conjure
                    :dependencies {:m00qek/baleia.nvim {:config true
                                                        :tag "v1.3.0"}}}

   ; undo
   :simnalamburt/vim-mundo {}

   ; lsp
   :williamboman/mason-lspconfig.nvim {:dependencies {:williamboman/mason.nvim {}
                                                      :neovim/nvim-lspconfig {}}
                                       :main :config.plugins.mason-lspconfig}
   :williamboman/mason.nvim {:build ":MasonUpdate"}
   :neovim/nvim-lspconfig {:main :config.plugins.lsp
                           :dependencies {:nvimtools/none-ls.nvim {:dependencies {:nvim-lua/plenary.nvim {}}}
                                          :jose-elias-alvarez/typescript.nvim {}
                                          :lukas-reineke/lsp-format.nvim {}
                                          :davidosomething/format-ts-errors.nvim {}
                                          :pmizio/typescript-tools.nvim {:dependencies {:nvim-lua/plenary.nvim {}
                                                                                        :neovim/nvim-lspconfig {}}}}}

   :creativenull/efmls-configs-nvim {:dependencies {:neovim/nvim-lspconfig {}}}
   :smjonas/inc-rename.nvim {:config true}

   ; formatting
   :stevearc/conform.nvim {:main :config.plugins.conform}

   ; search
   :wincent/ferret {:main :config.plugins.ferret}
   :nvim-pack/nvim-spectre {:dependencies {:nvim-lua/plenary.nvim {}}
                            :config true}

   ; ansi coloring
   :vim-scripts/AnsiEsc.vim {}

   ; filesystem
   :tpope/vim-eunuch {}
   :stevearc/oil.nvim {:main :config.plugins.oil}
   :pbrisbin/vim-mkdir {}
   :lambdalisue/suda.vim {}
   :nvim-telescope/telescope-file-browser.nvim {:dependencies {}}
   :nvim-telescope/telescope-project.nvim {:dependencies {}}
   :nvim-telescope/telescope-fzf-native.nvim {:build "make"}

   ; projects
   :tpope/vim-projectionist {:main :config.plugins.projectionist}
   :fuadsaud/rhizome.nvim {:main :config.plugins.rhizome}
                           ; :dev true
                           ; :dir "~/Sources/fuadsaud/rhizome.nvim"
                           ; :name "rhizome.nvim"}

   ; syntax
   :sheerun/vim-polyglot {}
   :nvim-treesitter/nvim-treesitter {:build ":TSUpdate"
                                     :main :config.plugins.treesitter}
   :norcalli/nvim-colorizer.lua {:main :config.plugins.colorizer}
   :HiPhish/rainbow-delimiters.nvim {:dependencies {:nvim-treesitter/nvim-treesitter {}}}

   ; text manipulation
   :tpope/vim-abolish {:main :config.plugins.abolish}
   :tpope/vim-commentary {}
   :tpope/vim-endwise {}
   :tpope/vim-ragtag {}
   :tpope/vim-repeat {}
   :tpope/vim-surround {}
   :tpope/vim-unimpaired {}
   :JoosepAlviste/nvim-ts-context-commentstring {:config true
                                                 :dependencies {:nvim-treesitter/nvim-treesitter {}
                                                                :tpope/vim-commentary {}}}
   :AndrewRadev/splitjoin.vim {:main :config.plugins.splitjoin}
   :windwp/nvim-autopairs {:main :config.plugins.autopairs}
   :windwp/nvim-ts-autotag {:dependencies {:nvim-treesitter/nvim-treesitter {}}}
   :junegunn/vim-easy-align {}
   :tommcdo/vim-exchange {}

   ; text objects
   :fuadsaud/vim-textobj-variable-segment {:dependencies {:kana/vim-textobj-user {}}}
   :kana/vim-textobj-user {}
   :michaeljsmith/vim-indent-object {}
   :nelstrom/vim-textobj-rubyblock {:ft :ruby}
   :wellle/targets.vim {}

   ; sexp
   :guns/vim-sexp {:main :config.plugins.sexp
                   :dependencies {:tpope/vim-sexp-mappings-for-regular-people {}}
                   :enabled false}
   :PaterJason/nvim-treesitter-sexp {:config true :enabled false}
   :julienvincent/nvim-paredit {:config true :enabled true}
   :eraserhd/parinfer-rust {:build "cargo build --release"}

   ; git
   :tpope/vim-fugitive {}
   :tpope/vim-rhubarb {}
   :lewis6991/gitsigns.nvim {:main :config.plugins.gitsigns
                             :dependencies {:radyz/telescope-gitsigns
                                            {:dependencies {:lewis6991/gitsigns.nvim {}
                                                            :nvim-telescope/telescope.nvim {}}}}}


   ; gist
   :mattn/gist-vim {:dependencies {:mattn/webapi-vim {}}}

   ; snippets
   :L3MON4D3/LuaSnip {:dependencies {:rafamadriz/friendly-snippets {}
                                     :saadparwaiz1/cmp_luasnip {}}
                      :main :config.plugins.luasnip}

   ; tmux
   :christoomey/vim-tmux-navigator {}

   ; todos
   :folke/todo-comments.nvim {:dependencies {:nvim-lua/plenary.nvim {}}
                              :config true}

   ; diagnostics
   :folke/trouble.nvim {:dependencies {:kyazdani42/nvim-web-devicons {}}
                        :config true}

   ; completion
   :hrsh7th/nvim-cmp {:dependencies {:PaterJason/cmp-conjure {}
                                     :hrsh7th/cmp-buffer {}
                                     :hrsh7th/cmp-cmdline {}
                                     :hrsh7th/cmp-nvim-lsp {}
                                     :hrsh7th/cmp-nvim-lsp-signature-help {}
                                     :hrsh7th/cmp-path {}}
                      :main :config.plugins.cmp}

   ; motion
   ; :ggandor/leap.nvim {:main :config.plugins.leap}
   :folke/flash.nvim {:config true}

   ; ui
   :gregsexton/MatchTag {}
   :jszakmeister/vim-togglecursor {}
   :junegunn/goyo.vim {}
   :f-person/auto-dark-mode.nvim {:config true}
   :folke/noice.nvim {:event :VeryLazy
                      :main :config.plugins.noice
                      :dependencies {:MunifTanjim/nui.nvim {}}}
   :gelguy/wilder.nvim {:main :config.plugins.wilder :enabled false}

   :lukas-reineke/indent-blankline.nvim {:main :ibl :opts {:indent {:highlight [:CursorColumn :Whitespace] :char ""}
                                                           :whitespace {:highlight [:CursorColumn :Whitespace]
                                                                        :remove_blankline_trail false}
                                                           :scope {:enabled false}}}
   :simeji/winresizer {}
   :nvim-lualine/lualine.nvim {:dependencies {:kyazdani42/nvim-web-devicons {}
                                              :fuadsaud/rhizome.nvim {}}
                               :config true
                               :main :config.plugins.lualine}

   :nvim-telescope/telescope-ui-select.nvim {:dependencies {}
                                             :commit "b0015e6e4b46a64192c64b68dec9a9ac5a4e5690"}
   :nvim-telescope/telescope.nvim {:dependencies {:nvim-lua/plenary.nvim {}
                                                  :fuadsaud/rhizome.nvim {}
                                                  :nvim-telescope/telescope-ui-select.nvim {}
                                                  :nvim-telescope/telescope-file-browser.nvim {}
                                                  :nvim-telescope/telescope-project.nvim {}
                                                  :nvim-telescope/telescope-fzf-native.nvim {}}
                                   :main :config.plugins.telescope}
   :stevearc/dressing.nvim {:config true}


   ; clojure
   :fuadsaud/vim-salve {:ft [:clojure]}

   ; markdown
   :iamcco/markdown-preview.nvim {:build "cd app && yarn install"
                                  :ft [:markdown]}

   ; plantuml
   :fuadsaud/vim-slumlord {}

   ; prose
   :dbmrq/vim-ditto {}

   ; python
   :hynek/vim-python-pep8-indent {:ft [:python]}

   ; colorschemes
   :haishanh/night-owl.vim {}
   :rose-pine/neovim {:name :rose-pine}
   :noahfrederick/Hemisu {}
   :fuadsaud/Monrovia {:dev true}})
                       ; :dir "~/Sources/fuadsaud/Monrovia"}})

(fn prepare [specs]
  (let [prepare-one
        (fn [[plugin-id plugin-spec]]
          (nfnl-core.merge plugin-spec
                   {1 plugin-id
                    :config (when (and (. plugin-spec :main)
                                       (not (. plugin-spec :opts))
                                       (not (. plugin-spec :config)))
                              true)
                    :dependencies (when (. plugin-spec :dependencies)
                                    (prepare (. plugin-spec :dependencies)))}))]
    (nfnl-core.map prepare-one (nfnl-core.kv-pairs specs))))

(fn init []
  (lazy.setup
    (prepare specs)
    {:checker {:enabled true}
     :dev {:path "~/Sources/fuadsaud"}}))

{: init}
