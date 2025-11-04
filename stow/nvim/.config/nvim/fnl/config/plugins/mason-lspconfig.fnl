(local {: autoload} (require :nfnl.module))
(local mason-lspconfig (autoload :mason-lspconfig))

(fn setup []
  (mason-lspconfig.setup {:ensure_installed [:clojure_lsp
                                             :html
                                             :cssls
                                             :jsonls
                                             :yamlls
                                             :emmet_language_server
                                             :cssmodules_ls
                                             :stylelint_lsp
                                             :eslint
                                             :lua_ls
                                             :fennel_language_server
                                             :bashls
                                             :taplo]

                          :automatic_enable false}))

{: setup}
