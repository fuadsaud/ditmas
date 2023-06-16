(module config.plugins.lspconfig
  {autoload {a aniseed.core
             clojure config.lsp.clojure
             cmp_lsp cmp_nvim_lsp
             eslint config.lsp.eslint
             lspconfig lspconfig
             lsp-format lsp-format
             mason mason
             mason-lspconfig mason-lspconfig
             null-ls null-ls
             nvim aniseed.nvim
             telescope-builtin telescope.builtin
             telescope-themes telescope.themes}})

(defn format
  [bufnr]
  (vim.lsp.buf.format {:bufnr bufnr
                       ; disable tsserver so it doesn't conflict with prettier (via null-ls)
                       :filter (fn [client] (not (= client.name "tsserver"))) 
                       :async true}))

(defn on_attach [client bufnr]
  (print (a.str "Running shared config.lsp.on_attach" {:client client.name}))

  (let [buf-set-option (fn [opt val] (nvim.buf_set_option bufnr opt val))
        buf-set-keymap-fn (fn [mode mapping target-fn]
                            (vim.keymap.set mode mapping target-fn {:buffer bufrn
                                                                    :noremap true}))]
    (buf-set-option "omnifunc" "v:lua.vim.lsp.omnifunc")

    ; references
    (buf-set-keymap-fn :n :K            #(vim.lsp.buf.hover))
    (buf-set-keymap-fn :n :<Leader>lk   #(vim.lsp.buf.signature_help))
    (buf-set-keymap-fn :i :<C-_>        #(vim.lsp.buf.signature_help))
    (buf-set-keymap-fn :n :<Leader>ltd  #(vim.lsp.buf.type_definition))
    (buf-set-keymap-fn :n :<Leader>lic  #(vim.lsp.buf.incoming_calls))
    (buf-set-keymap-fn :n :gr           #(vim.lsp.buf.references))
    (buf-set-keymap-fn :n :gR           #(vim.cmd {:cmd :TroubleToggle :args  :lsp_references}))
    (buf-set-keymap-fn :n :gd           #(vim.lsp.buf.definition))
    (buf-set-keymap-fn :n :g0           #(vim.lsp.buf.document_symbol))
    (buf-set-keymap-fn :n :gD           #(vim.lsp.buf.declaration))
    (buf-set-keymap-fn :n :gW           #(vim.lsp.buf.workspace_symbol))
    (buf-set-keymap-fn :n :gi           #(vim.lsp.buf.implementation))

    (buf-set-keymap-fn :n :<Leader>lca #(vim.lsp.buf.code_action))
    (buf-set-keymap-fn :n :<Leader>lf  #(format bufnr))
    (buf-set-keymap-fn :n :<Leader>lr  #(vim.lsp.buf.rename))
    (buf-set-keymap-fn :n :<Leader>lwa #(vim.lsp.buf.add_workspace_folder))
    (buf-set-keymap-fn :n :<Leader>lwl #(vim.inspect (vim.lsp.buf.list_workspace_folders)))
    (buf-set-keymap-fn :n :<Leader>lwr #(vim.lsp.buf.remove_workspace_folder))

    ; telescope
    (let [telescope-theme (telescope-themes.get_ivy)]
      (buf-set-keymap-fn :n :<Leader>fws  #(telescope-builtin.lsp_workspace_symbols telescope-theme))
      (buf-set-keymap-fn :n :<Leader>fds  #(telescope-builtin.lsp_document_symbols telescope-theme))
      (buf-set-keymap-fn :n :<Leader>fr   #(telescope-builtin.lsp_references telescope-theme))
      (buf-set-keymap-fn :n :<Leader>fi   #(telescope-builtin.lsp_implementations telescope-theme)))

    (let [group (vim.api.nvim_create_augroup "lsp-format-on-save" {})]
      (vim.api.nvim_clear_autocmds {:group group :buffer bufnr})

      (vim.api.nvim_create_autocmd :BufWritePre {:group group
                                                 :buffer bufnr
                                                 :callback #(format bufnr)}))))

(def handlers
  {"textDocument/hover"
   (vim.lsp.with
     vim.lsp.handlers.hover
     {:border "single"})
   "textDocument/signatureHelp"
   (vim.lsp.with
     vim.lsp.handlers.signature_help
     {:border "single"})})

(defn capabilities []
  (let [capabilities (cmp_lsp.default_capabilities)]
    ; enable snippets via the lsp client
    (tset capabilities :textDocument :completion :completionItem :snippetSupport true)
    capabilities))

(def default-server-opts
  {:on_attach on_attach
   :handlers handlers
   :capabilities (capabilities)})

(def server->config
  {:clojure_lsp (clojure.opts default-server-opts)
   :html default-server-opts
   :cssls default-server-opts
   :jsonls default-server-opts
   :eslint (eslint.opts default-server-opts)
   :tsserver default-server-opts
   :bashls default-server-opts})

(defn config []
  (print "config.plugins.lspconfig/config")

  (lsp-format.setup {:exclude [:tsserver]})

  (mason.setup {})

  (mason-lspconfig.setup {:automatic_installation true})

  (null-ls.setup
    {:sources [null-ls.builtins.formatting.prettier]
     :on_attach on_attach
     :debug true})

  (print (string.format "config.plugins.lspconfig/config: setup finished for [%s]" "null-ls"))

  (each [server-name config (pairs server->config)]
    ((. lspconfig server-name :setup) config)

    (print (string.format "config.plugins.lspconfig/config: setup finished for [%s]" server-name))))
