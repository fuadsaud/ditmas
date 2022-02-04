(module config.plugins.lspconfig
  {autoload {a aniseed.core
             clojure config.lsp.clojure
             shared config.lsp.shared
             lspconfig lspconfig
             nvim aniseed.nvim}})

(defn config []
  (let [default_server_opts {:on_attach shared.on_attach
                             :handlers shared.handlers
                             :capabilities (shared.capabilities)}]
    (lspconfig.clojure_lsp.setup (clojure.opts default_server_opts))
    (lspconfig.html.setup default_server_opts)
    (lspconfig.cssls.setup default_server_opts)
    (lspconfig.jsonls.setup default_server_opts)
    (lspconfig.eslint.setup default_server_opts)
    (lspconfig.tsserver.setup default_server_opts)))
