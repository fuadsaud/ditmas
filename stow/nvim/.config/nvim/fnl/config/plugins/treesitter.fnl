(module config.plugins.treesitter
  {autoload {treesitter nvim-treesitter.configs}})


(defn setup []
  (treesitter.setup
    {:ensure_installed :all
     :ignore_install [:norg]

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

     :rainbow
     {:enable true
      :extended_mode true}

     :autotag
     {:enable true}}))
