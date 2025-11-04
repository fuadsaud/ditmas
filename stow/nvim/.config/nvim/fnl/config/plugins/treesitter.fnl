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
      :keymaps {:init_selection "<CR>"
                :node_incremental "<Tab>"
                :node_decremental "<S-Tab>"
                :scope_incremental "<CR>"}}

     :autotag
     {:enable false}}))

{: setup}
