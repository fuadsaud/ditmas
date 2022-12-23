(module config.plugins.treesitter
  {autoload {treesitter nvim-treesitter.configs}})

(defn config []
  (treesitter.setup {:ensure_installed :all
                     :ignore_install [:norg]
                     :indent {:enable true}
                     :highlight {:enable true}}))
