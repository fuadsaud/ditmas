(module config.plugins.auto-pairs
  {autoload {a aniseed.core
             autopairs nvim-autopairs
             constants config.constants}})

(defn config []
  (autopairs.setup {:check_ts true
                    :disable_filetype (a.concat ["TelescopePrompt"]
                                                constants.sexp-languages)}))