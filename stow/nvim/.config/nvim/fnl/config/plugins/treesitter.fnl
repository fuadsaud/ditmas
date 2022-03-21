(module config.plugins.treesitter
  {autoload {treesitter nvim-treesitter.configs}})

(defn config []
  (treesitter.setup {:ensure_installed :maintained
                     :ignore_install ["norg"]
                     :sync_install false
                     :indent {:enable true}
                     :highlight {:enable true
                                 :additional_vim_regex_highlighting false}
                     :rainbow {:enable true
                               :extended_mode true
                               :max_file_lines nil}}))
