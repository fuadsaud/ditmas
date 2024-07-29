(local {: autoload} (require :nfnl.module))
(local nfnl-core (autoload :nfnl.core))
(local cmp_lsp (autoload :cmp_nvim_lsp))
; (local efmls-configs-defaults (autoload :efmls-configs.defaults))
(local lspconfig (autoload :lspconfig))
(local lsp-format (autoload :lsp-format))
(local mason (autoload :mason))
(local mason-lspconfig (autoload :mason-lspconfig))
(local neodev (autoload :neodev))
(local null-ls (autoload :null-ls))
(local telescope-builtin (autoload :telescope.builtin))
(local telescope-themes (autoload :telescope.themes))
(local typescript (autoload :typescript))
(local typescript-null-ls-code-actions (autoload :typescript.extensions.null-ls.code-actions))
(local typescript-tools (autoload :typescript-tools))

(local verbose? false)

(fn log [message]
  (when verbose?
    (vim.notify message)))

(local default-server-opts
  {:on_attach (fn [client bufnr]
                (log (nfnl-core.str "Running config.lsp.shared/on_attach" {:client client.name}))

                (vim.lsp.inlay_hint.enable true)

                (when (= client.name "eslint")
                  (tset client :server_capabilities :documentFormattingProvider true))

                (lsp-format.on_attach client bufnr)

                (let [buf-set-option (fn [opt val] (vim.api.nvim_buf_set_option bufnr opt val))
                      buf-set-keymap-fn (fn [mode mapping target-fn]
                                          (vim.keymap.set mode mapping target-fn {:buffer bufnr
                                                                                  :noremap true}))]
                  (buf-set-option "omnifunc" "v:lunfnl-core.vim.lsp.omnifunc")

                  (buf-set-keymap-fn :n :K            #(vim.lsp.buf.hover))
                  (buf-set-keymap-fn :n :<Leader>k    #(vim.lsp.buf.signature_help))
                  (buf-set-keymap-fn :i :<C-Z>        #(vim.lsp.buf.signature_help))
                  (buf-set-keymap-fn :n :<Leader>lic  #(vim.lsp.buf.incoming_calls))
                  (buf-set-keymap-fn :n :<Leader>loc  #(vim.lsp.buf.outgoing_calls))
                  (buf-set-keymap-fn :n :gr           #(vim.lsp.buf.references))
                  (buf-set-keymap-fn :n :gR           #(vim.cmd {:cmd :TroubleToggle :args :lsp_references}))
                  (buf-set-keymap-fn :n :gd           #(vim.lsp.buf.definition))
                  (buf-set-keymap-fn :n :g0           #(vim.lsp.buf.document_symbol))
                  (buf-set-keymap-fn :n :gD           #(vim.lsp.buf.declaration))
                  (buf-set-keymap-fn :n :gtd          #(vim.lsp.buf.type_definition))
                  (buf-set-keymap-fn :n :gW           #(vim.lsp.buf.workspace_symbol))
                  (buf-set-keymap-fn :n :gi           #(vim.lsp.buf.implementation))

                  (buf-set-keymap-fn :n :<Leader>lk  #(vim.lsp.buf.code_action))
                  (buf-set-keymap-fn :n :<Leader>lf  #(vim.lsp.buf.format))
                  (buf-set-keymap-fn :n :<Leader>lr  #(vim.lsp.buf.rename))
                  (buf-set-keymap-fn :n :<Leader>lwa #(vim.lsp.buf.add_workspace_folder))
                  (buf-set-keymap-fn :n :<Leader>lwl #(vim.inspect (vim.lsp.buf.list_workspace_folders)))
                  (buf-set-keymap-fn :n :<Leader>lwr #(vim.lsp.buf.remove_workspace_folder))
                  (buf-set-keymap-fn :n :<Leader>lihe #(vim.lsp.inlay_hint.enable true))
                  (buf-set-keymap-fn :n :<Leader>lihd #(vim.lsp.inlay_hint.enable false))


                  (let [telescope-theme (telescope-themes.get_ivy)]
                    (buf-set-keymap-fn :n :<Leader>fws #(telescope-builtin.lsp_workspace_symbols telescope-theme))
                    (buf-set-keymap-fn :n :<Leader>fds #(telescope-builtin.lsp_document_symbols telescope-theme))
                    (buf-set-keymap-fn :n :<Leader>fr  #(telescope-builtin.lsp_references telescope-theme))
                    (buf-set-keymap-fn :n :<Leader>fi  #(telescope-builtin.lsp_implementations telescope-theme))
                    (buf-set-keymap-fn :n :<Leader>flic  #(telescope-builtin.lsp_incoming_calls telescope-theme))
                    (buf-set-keymap-fn :n :<Leader>floc  #(telescope-builtin.lsp_outgoing_calls telescope-theme)))))


   :handlers {"textDocument/hover"
              (vim.lsp.with
                vim.lsp.handlers.hover
                {:border "single"})
              "textDocument/signatureHelp"
              (vim.lsp.with
                vim.lsp.handlers.signature_help
                {:border "single"})}

   :capabilities (-> (nfnl-core.merge {} (cmp_lsp.default_capabilities)) ; clone table
                     (nfnl-core.assoc-in
                      [:textDocument :completion :completionItem :snippetSupport]
                      true))})

(local server->config
  {:clojure_lsp (nfnl-core.merge
                  default-server-opts
                  {:on_attach
                    (fn [client bufnr]
                      (let [buf-set-keymap-fn (fn [mode mapping target-fn]
                                                (vim.keymap.set mode mapping target-fn {:buffer bufnr
                                                                                        :noremap true}))

                            expand-path-uri (fn [] (nfnl-core.str "file://" (vim.fn.expand "%:p")))]

                        (log "Running config.plugins.lsp.clojure/on_attach")

                        (let [execute-command (fn [command-name extra-args]
                                                (vim.lsp.buf.execute_command
                                                  {:command command-name
                                                   :arguments (nfnl-core.concat [(expand-path-uri)
                                                                                 (- (vim.fn.line ".") 1)
                                                                                 (- (vim.fn.col ".") 1)
                                                                                 extra-args])}))]

                          (buf-set-keymap-fn :n :<LocalLeader>cc #(execute-command :cycle-coll          []))
                          (buf-set-keymap-fn :n :<LocalLeader>cp #(execute-command :cycle-privacy       []))
                          (buf-set-keymap-fn :n :<LocalLeader>th #(execute-command :thread-first        []))
                          (buf-set-keymap-fn :n :<LocalLeader>tt #(execute-command :thread-last         []))
                          (buf-set-keymap-fn :n :<LocalLeader>tf #(execute-command :thread-first-all    []))
                          (buf-set-keymap-fn :n :<LocalLeader>tl #(execute-command :thread-last-all     []))
                          (buf-set-keymap-fn :n :<LocalLeader>am #(execute-command :add-missing-libspec []))
                          (buf-set-keymap-fn :n :<LocalLeader>el #(execute-command :expand-let          []))
                          (buf-set-keymap-fn :n :<LocalLeader>ml #(execute-command :move-to-let         [(vim.fn.input "Binding name: ")]))
                          (buf-set-keymap-fn :n :<LocalLeader>il #(execute-command :introduce-let       [(vim.fn.input "Binding name: ")]))

                          (default-server-opts.on_attach client bufnr))))})

   :html default-server-opts

   :cssls default-server-opts

   :jsonls default-server-opts

   :yamlls default-server-opts

   :emmet_language_server default-server-opts

   :cssmodules_ls (nfnl-core.merge
                    default-server-opts
                    {:on_attach
                     (fn [client bufnr]
                       (set client.server_capabilities.defintionProvider false)
                       (default-server-opts.on_attach client bufnr))})

   :stylelint_lsp (nfnl-core.merge
                    default-server-opts
                    {:settings {:stylelintplus {:autoFixOnFormat true}}})

   :eslint (nfnl-core.merge
             default-server-opts
             {:settings {:rulesCustomizations [{:rule "prettier/prettier" :severity "off"}]}})

   :lua_ls (nfnl-core.merge
             default-server-opts
             {:settings {:Lua {:diagnostics {:globals [:vim]}}}})

   ; :efm (nfnl-core.merge
   ;        default-server-opts
   ;        {:settings {:languages (vim.tbl_keys (efmls-configs-defaults.languages))}
   ;         :init_options {:documentFormatting true
   ;                        :documentRangeFormatting true}})

   :fennel_language_server (nfnl-core.merge
                             default-server-opts
                             {:settings {:fennel {:workspace {:library (vim.api.nvim_list_runtime_paths)}
                                                  :diagnostics {:globals [:vim]}}}})

   :bashls default-server-opts

   :taplo default-server-opts})

(fn setup-mason []
  (mason.setup {})
  (mason-lspconfig.setup {:automatic_installation true}))

(fn setup-null-ls []
  (null-ls.setup
    {:sources [null-ls.builtins.formatting.prettier
               null-ls.builtins.code_actions.gitsigns
               null-ls.builtins.diagnostics.stylelint
               typescript-null-ls-code-actions]

     :on_attach default-server-opts.on_attach
     :debug true})

  (log (string.format "config.plugins.lspconfig/config: setup finished for [%s]" "null-ls")))

(fn setup-lspconfig []
  (each [server-name config (pairs server->config)]
    ((. lspconfig server-name :setup) config)

    (log (string.format "config.plugins.lspconfig/config: setup finished for [%s]" server-name))))

(fn setup-lsp-format []
  (lsp-format.setup {:exclude [:tsserver :jsonls :cssls]}))

(fn setup-neodev []
  (neodev.setup {}))

(fn setup-tsserver []
  (let [settings {:inlayHints {:includeInlayEnumMemberValueHints true
                               :includeInlayFunctionLikeReturnTypeHints true
                               :includeInlayFunctionParameterTypeHints true
                               :includeInlayPropertyDeclarationTypeHints true
                               :includeInlayParameterNameHints :all
                               :includeInlayParameterNameHintsWhenArgumentMatchesName true
                               :includeInlayVariableTypeHints true
                               :includeInlayVariableTypeHintsWhenArgumentMatchesName true}
                  :implementationsCodeLens {:enabled true}
                  :referencesCodeLens {:enabled true
                                       :showOnAllFunctions true}}]
    (typescript.setup {:server (nfnl-core.merge
                                 default-server-opts
                                 {:settings {:javascript settings
                                             :typescript settings}})})))

(fn setup-typescript-tools []
  (typescript-tools.setup {:expose_as_code_action "all"
                           :code_lens "all"}))

(fn setup []
  (log "config.plugins.lspconfig/config")

  (setup-mason)
  (setup-neodev)
  (setup-tsserver)
  (setup-typescript-tools)
  (setup-null-ls)
  (setup-lspconfig)
  (setup-lsp-format))

{: setup}
