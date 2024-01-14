(local {: autoload} (require :nfnl.module))
(local nfnl-core (autoload :nfnl.core))
(local autopairs (autoload :nvim-autopairs))
(local constants (autoload :config.constants))

(fn setup []
  (autopairs.setup {:check_ts true
                    :disable_filetype (nfnl-core.concat ["TelescopePrompt"]
                                                constants.sexp-languages)}))

{: setup}
