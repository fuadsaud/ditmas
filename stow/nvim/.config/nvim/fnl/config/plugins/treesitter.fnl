(module config.plugins.treesitter
  {autoload {treesitter nvim-treesitter.configs
             ts_context_commentstring ts_context_commentstring}})


(defn setup []
  (treesitter.setup
    {:ensure_installed :all
     :ignore_install [:norg :scfg]

     :indent
     {:enable true}

     :highlight
     {:enable true}

     :incremental_selection
     {:enable true
      :keymaps {:init_selection "gvv"
                :node_incremental "gvk"
                :node_decremental "gvj"
                :scope_incremental "gvK"}}

     :autotag
     {:enable true}}))
