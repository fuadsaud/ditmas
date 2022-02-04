(module config.plugins.lsp
  {autoload {nvim aniseed.nvim
             a aniseed.core
             lsp lspconfig
             cmp_lsp cmp_nvim_lsp}})

(defn expand_path_uri
  []
  (a.str "file://" (vim.fn.expand "%:p")))

(defn setup []
  (let [on_attach (fn [client bufnr]
                    (let [buf_set_keymap (fn [mode mapping target] (nvim.buf_set_keymap bufnr mode mapping target {:noremap true}))
                          buf_set_option (fn [opt val] (nvim.buf_set_option bufnr opt val))]

                      (buf_set_option "omnifunc" "v:lua.vim.lsp.omnifunc")
                      ; (vim.cmd "command! Format execute 'lua vim.lsp.buf.formatting()'")

                      ; references
                      (buf_set_keymap :n "K"           "<cmd>lua vim.lsp.buf.hover()<CR>")
                      (buf_set_keymap :n "<Leader>lk"  "<cmd>lua vim.lsp.buf.signature_help()<CR>")
                      (buf_set_keymap :n "<Leader>ltd" "<cmd>lua vim.lsp.buf.type_definition()<CR>")
                      (buf_set_keymap :n "<Leader>lic" "<cmd>lua vim.lsp.buf.incoming_calls()<CR>")
                      (buf_set_keymap :n "gr"          "<cmd>lua vim.lsp.buf.references()<CR>")
                      (buf_set_keymap :n "gd"          "<cmd>lua vim.lsp.buf.definition()<CR>")
                      (buf_set_keymap :n "g0"          "<cmd>lua vim.lsp.buf.document_symbol()<CR>")
                      (buf_set_keymap :n "gD"          "<cmd>lua vim.lsp.buf.declaration()<CR>")
                      (buf_set_keymap :n "gW"          "<cmd>lua vim.lsp.buf.workspace_symbol()<CR>")
                      (buf_set_keymap :n "gi"          "<cmd>lua vim.lsp.buf.implementation()<CR>")

                      (buf_set_keymap :n "<Leader>lca" "<cmd>lua vim.lsp.buf.code_action()<CR>")
                      (buf_set_keymap :n "<Leader>l="  "<cmd>lua vim.lsp.buf.formatting()<CR>")
                      (buf_set_keymap :n "<Leader>lr"  "<cmd>lua vim.lsp.buf.rename()<CR>")
                      (buf_set_keymap :n "<Leader>lwa" "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>")
                      (buf_set_keymap :n "<Leader>lwl" "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>")
                      (buf_set_keymap :n "<Leader>lwr" "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>")

                      ; telescope
                      (buf_set_keymap :n "<Leader>fca"  "<cmd>lua require('telescope.builtin').lsp_code_actions(require('telescope.themes').get_cursor())<CR>")
                      (buf_set_keymap :v "<Leader>frca" "<cmd>lua require('telescope.builtin').lsp_range_code_actions(require('telescope.themes').get_cursor())<CR>")
                      (buf_set_keymap :n "<Leader>fws"  "<cmd>lua require('telescope.builtin').lsp_workspace_symbols(require('telescope.themes').get_dropdown({}))<CR>")
                      (buf_set_keymap :n "<Leader>fr"   "<cmd>lua require('telescope.builtin').lsp_references(require('telescope.themes').get_dropdown({}))<CR>")
                      (buf_set_keymap :n "<Leader>fi"   "<cmd>lua require('telescope.builtin').lsp_implementations(require('telescope.themes').get_dropdown({}))<CR>")

                      ; clojure
                      (buf_set_keymap :n "<LocalLeader>cc" "<cmd>lua vim.lsp.buf.execute_command({command='cycle-coll',          arguments={ require('config.plugins.lsp').expand_path_uri(), vim.fn.line('.') - 1, vim.fn.col('.') - 1 }})<CR>")
                      (buf_set_keymap :n "<LocalLeader>cp" "<cmd>lua vim.lsp.buf.execute_command({command='cycle-privacy',       arguments={ require('config.plugins.lsp').expand_path_uri(), vim.fn.line('.') - 1, vim.fn.col('.') - 1 }})<CR>")
                      (buf_set_keymap :n "<LocalLeader>th" "<cmd>lua vim.lsp.buf.execute_command({command='thread-first',        arguments={ require('config.plugins.lsp').expand_path_uri(), vim.fn.line('.') - 1, vim.fn.col('.') - 1 }})<CR>")
                      (buf_set_keymap :n "<LocalLeader>tt" "<cmd>lua vim.lsp.buf.execute_command({command='thread-last',         arguments={ require('config.plugins.lsp').expand_path_uri(), vim.fn.line('.') - 1, vim.fn.col('.') - 1 }})<CR>")
                      (buf_set_keymap :n "<LocalLeader>tf" "<cmd>lua vim.lsp.buf.execute_command({command='thread-first-all',    arguments={ require('config.plugins.lsp').expand_path_uri(), vim.fn.line('.') - 1, vim.fn.col('.') - 1 }})<CR>")
                      (buf_set_keymap :n "<LocalLeader>tl" "<cmd>lua vim.lsp.buf.execute_command({command='thread-last-all',     arguments={ require('config.plugins.lsp').expand_path_uri(), vim.fn.line('.') - 1, vim.fn.col('.') - 1 }})<CR>")
                      (buf_set_keymap :n "<LocalLeader>am" "<cmd>lua vim.lsp.buf.execute_command({command='add-missing-libspec', arguments={ require('config.plugins.lsp').expand_path_uri(), vim.fn.line('.') - 1, vim.fn.col('.') - 1 }})<CR>")
                      (buf_set_keymap :n "<LocalLeader>el" "<cmd>lua vim.lsp.buf.execute_command({command='expand-let',          arguments={ require('config.plugins.lsp').expand_path_uri(), vim.fn.line('.') - 1, vim.fn.col('.') - 1 }})<CR>")
                      (buf_set_keymap :n "<LocalLeader>ml" "<cmd>lua vim.lsp.buf.execute_command({command='move-to-let',         arguments={ require('config.plugins.lsp').expand_path_uri(), vim.fn.line('.') - 1, vim.fn.col('.') - 1, vim.fn.input('Binding name: ') }})<CR>")
                      (buf_set_keymap :n "<LocalLeader>il" "<cmd>lua vim.lsp.buf.execute_command({command='introduce-let',       arguments={ require('config.plugins.lsp').expand_path_uri(), vim.fn.line('.') - 1, vim.fn.col('.') - 1, vim.fn.input('Binding name: ') }})<CR>")))

        handlers {"textDocument/publishDiagnostics"
                  (vim.lsp.with
                    vim.lsp.diagnostic.on_publish_diagnostics
                    {:severity_sort true
                     :update_in_insert false
                     :underline true
                     :virtual_text false})
                  "textDocument/hover"
                  (vim.lsp.with
                    vim.lsp.handlers.hover
                    {:border "single"})
                  "textDocument/signatureHelp"
                  (vim.lsp.with
                    vim.lsp.handlers.signature_help
                    {:border "single"})}

        capabilities (cmp_lsp.update_capabilities (vim.lsp.protocol.make_client_capabilities))

        default_server_config {:on_attach on_attach
                               :handlers handlers
                               :capabilities capabilities}]

    ; enable snippets via the lsp client
    (tset capabilities :textDocument :completion :completionItem :snippetSupport true)

    ; TODO: break up per-server on_attach fn
    (lsp.clojure_lsp.setup default_server_config)
    (lsp.html.setup default_server_config)
    (lsp.cssls.setup default_server_config)
    (lsp.jsonls.setup default_server_config)
    (lsp.eslint.setup default_server_config)
    (lsp.tsserver.setup default_server_config)))
