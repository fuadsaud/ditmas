(module config.plugins.autopairs
  {autoload {autopairs nvim-autopairs
             a aniseed.core
             constants config.constants}})

(defn setup []
  (autopairs.setup {:disable_filetype (a.concat ["TelescopePrompt" "vim"]
                                                constants.sexp-languages)}))

(comment
  constants.sexp-languages)
