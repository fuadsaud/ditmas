(local {: autoload} (require :nfnl.module))
(local nfnl-string (autoload :nfnl.string))
(local constants (autoload :config.constants))

(fn setup []
  (vim.notify "Running config.plugins.sexp/config")

  (set vim.g.sexp_filetypes (->> constants.sexp-languages (nfnl-string.join ",")))
  (set vim.g.sexp_enable_insert_mode_mappings 0))

{: setup}
