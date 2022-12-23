(module config.plugins.mason
  {autoload {mason mason
             mason-lspcofnig mason-lspcofnig}})

(defn config []
  (mason.setup {})

  (mason-lspconfig/setup
    {:ensure_installed [:clojure_lsp
                        :html
                        :cssls
                        :jsonls
                        :eslint
                        :tsserver
                        :bashls]}))
