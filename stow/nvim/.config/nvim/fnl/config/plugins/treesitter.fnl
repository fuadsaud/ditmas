(module config.plugins.treesitter
  {autoload {treesitter nvim-treesitter.configs}})

(treesitter.setup {:ensure_installed :maintained
                   :sync_install false
                   :indent {:enable true}
                   :highlight {:enable true
                               :additional_vim_regex_highlighting false}
                   :rainbow {:enable true
                             :extended_mode true
                             :max_file_lines nil}})
