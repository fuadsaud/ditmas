(module config.plugins
  {autoload {a aniseed.core
             lazy lazy
             nvim aniseed.nvim}})

(def specs
  {; meta
   :tpope/vim-scriptease {}
   :folke/which-key.nvim {:config true}
   :folke/neodev.nvim {}
   :Olical/aniseed {:branch "develop"}
   :Olical/conjure {:dependencies {:m00qek/baleia.nvim {:config true
                                                        :tag "v1.3.0"}}}

   ; undo
   :simnalamburt/vim-mundo {}

   ; lsp
   :neovim/nvim-lspconfig {:main :config.plugins.lsp
                           :dependencies {:jose-elias-alvarez/null-ls.nvim {:dependencies {:nvim-lua/plenary.nvim {}}}
                                          :jose-elias-alvarez/typescript.nvim {}
                                          :lukas-reineke/lsp-format.nvim {}
                                          :williamboman/mason-lspconfig.nvim {:dependencies {:williamboman/mason.nvim {}}}
                                          :williamboman/mason.nvim {:build ":MasonUpdate"}}}

   ; search
   :wincent/ferret {}
   :nvim-pack/nvim-spectre {:dependencies {:nvim-lua/plenary.nvim {}}
                            :config true}

   ; ansi coloring
   :vim-scripts/AnsiEsc.vim {}

   ; filesystem
   :tpope/vim-eunuch {}
   :tpope/vim-vinegar {}
   :pbrisbin/vim-mkdir {}
   :lambdalisue/suda.vim {}
   :nvim-telescope/telescope-file-browser.nvim {:dependencies {:nvim-telescope/telescope.nvim {}}}
   :nvim-telescope/telescope-project.nvim {:dependencies {:nvim-telescope/telescope.nvim {}}}
   :nvim-telescope/telescope-fzf-native.nvim {:build "make"
                                              :dependencies {:nvim-telescope/telescope.nvim {}}}

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
   :eraserhd/parinfer-rust {:build "cargo build --release"}
   :PaterJason/nvim-treesitter-sexp {:config true :enabled true}

   ; git
   :tpope/vim-fugitive {}
   :tpope/vim-rhubarb {}
   :lewis6991/gitsigns.nvim {:main :config.plugins.gitsigns}

   ; gist
   :mattn/gist-vim {:dependencies {:mattn/webapi-vim {}}}

   ; projects
   :tpope/vim-projectionist {}
   :fuadsaud/rhizome.nvim {:dev true
                           :dir "~/Sources/fuadsaud/rhizome.nvim"
                           :name "rhizome.nvim"
                           :main :config.plugins.rhizome}

   ; snippets
   :L3MON4D3/LuaSnip {:dependencies {:rafamadriz/friendly-snippets {}
                                     :saadparwaiz1/cmp_luasnip {}}
                      :main :config.plugins.luasnip}

   ; tmux
   :christoomey/vim-tmux-navigator {}
   :edkolev/tmuxline.vim {}

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
   :ggandor/leap.nvim {:main :config.plugins.leap}

   ; ui
   :gregsexton/MatchTag {}
   :jszakmeister/vim-togglecursor {}
   :junegunn/goyo.vim {}
   :f-person/auto-dark-mode.nvim {:config true}
   :folke/noice.nvim {:event :VeryLazy
                      :main :config.plugins.noice
                      :dependencies {:MunifTanjim/nui.nvim {}}}
   :gelguy/wilder.nvim {:main :config.plugins.wilder :enabled false}

   :nathanaelkane/vim-indent-guides {}
   :simeji/winresizer {}
   :nvim-lualine/lualine.nvim {:dependencies {:kyazdani42/nvim-web-devicons {}}
                               :config true
                               :main :config.plugins.lualine}
   :nvim-telescope/telescope-ui-select.nvim {:dependencies {:nvim-telescope/telescope.nvim {}}}
   :nvim-telescope/telescope.nvim {:dependencies {:nvim-lua/plenary.nvim {}}
                                   :main :config.plugins.telescope}


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
   :fuadsaud/Monrovia {:dev true
                       :dir "~/Sources/fuadsaud/Monrovia"}})

(defn prepare [specs]
  (let [prepare-one
        (fn [[plugin-id plugin-spec]]
          (a.merge plugin-spec
                   {1 plugin-id
                    :config (when (and (. plugin-spec :main)
                                       (not (. plugin-spec :opts))
                                       (not (. plugin-spec :config)))
                              true)
                    :dependencies (when (. plugin-spec :dependencies)
                                    (prepare (. plugin-spec :dependencies)))}))]
    (a.map prepare-one (a.kv-pairs specs))))

(defn init []
  (lazy.setup
    (prepare specs)
    {:checker {:enabled true}}))
