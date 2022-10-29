(module config.plugins.sexp
  {autoload {string aniseed.string
             constants config.constants}})

(defn config []
  (print "Running config.plugins.sexp/config")
  (set vim.g.sexp_filetypes (->> constants.sexp-languages (string.join ",")))
  (set vim.g.sexp_enable_insert_mode_mappings 0))
