(local {: autoload} (require :nfnl.module))
(local treesitter (autoload :nvim-treesitter.configs))

(fn setup []
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
     {:enable false}}))

{: setup}
