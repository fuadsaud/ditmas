(module config.lsp.eslint
  {autoload {nvim aniseed.nvim
             a aniseed.core
             shared config.lsp.shared
             lspconfig lspconfig
             util lspconfig.util}
   require-macros [config.macros]})

(defn- on_attach [client bufnr]
  (augroup :eslint-fix-on-save
    (autocmd :BufWritePre "*.tsx,*.ts,*.jsx,*.js" "EslintFixAll")))


(defn opts [default-server-opts]
  (a.merge default-server-opts {:on_attach (fn [client bufnr]
                                             (on_attach client bufnr)
                                             (default-server-opts.on_attach client bufnr))
                                :root_dir (util.root_pattern ".git")}))
