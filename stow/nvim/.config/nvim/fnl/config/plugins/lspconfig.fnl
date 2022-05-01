(module config.plugins.lspconfig
  {autoload {a aniseed.core
             clojure config.lsp.clojure
             shared config.lsp.shared
             lspconfig lspconfig
             nvim aniseed.nvim
             lsp-installer nvim-lsp-installer}})

(def default-server-opts
  {:on_attach shared.on_attach
   :handlers shared.handlers
   :capabilities (shared.capabilities)})

(def server->config
  {:clojure_lsp (clojure.opts default-server-opts)
   :html default-server-opts
   :cssls default-server-opts
   :jsonls default-server-opts
   :eslint default-server-opts
   :tsserver default-server-opts})

(comment
  (lspconfig.clojure_lsp.setup (. server->config :clojure_lsp))
  (-> lspconfig
      (. :clojure_lsp)
      (: :setup (. server->config :clojure_lsp))))

(defn config []
  (print "config.plugins.lspconfig/config")

  (lsp-installer.setup {:automatic_installation true})

  (each [server-name config (pairs server->config)]
    ((. lspconfig server-name :setup) config)))
