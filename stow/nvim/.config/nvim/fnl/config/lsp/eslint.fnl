(module config.lsp.eslint
  {autoload {a aniseed.core}
   require-macros [lib.macros]})

(defn- on_attach [client bufnr]
  (augroup :eslint-fix-on-save
    (autocmd :BufWritePre "*.tsx,*.ts,*.jsx,*.js" "EslintFixAll")))


(defn opts [default-server-opts]
  (a.merge default-server-opts {:on_attach (fn [client bufnr]
                                             (on_attach client bufnr)
                                             (default-server-opts.on_attach client bufnr))}))
