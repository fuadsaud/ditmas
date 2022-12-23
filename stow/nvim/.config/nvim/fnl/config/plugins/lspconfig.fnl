(module config.plugins.lspconfig
  {autoload {a aniseed.core
             clojure config.lsp.clojure
             eslint config.lsp.eslint
             shared config.lsp.shared
             lspconfig lspconfig
             mason-lspconfig mason-lspconfig
             mason mason
             nvim aniseed.nvim}
   require-macros [config.macros]})

(def default-server-opts
  {:on_attach shared.on_attach
   :handlers shared.handlers
   :capabilities (shared.capabilities)})

(def server->config
  {:clojure_lsp (clojure.opts default-server-opts)
   :html default-server-opts
   :cssls default-server-opts
   :jsonls default-server-opts
   :eslint (eslint.opts default-server-opts)
   :tsserver default-server-opts
   :bashls default-server-opts})

(comment
  (config)
  (lspconfig.clojure_lsp.setup (. server->config :clojure_lsp))
  (-> lspconfig
      (. :clojure_lsp)
      (: :setup (. server->config :clojure_lsp))))

(defn config []
  (print "config.plugins.lspconfig/config")

  (mason.setup {})

  (mason-lspconfig.setup {:automatic_installation true})

  (each [server-name config (pairs server->config)]
    ((. lspconfig server-name :setup) config)

    (print (string.format "config.plugins.lspconfig/config: setup finished for [%s]" server-name))))
