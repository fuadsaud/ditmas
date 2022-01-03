(module config.plugins.lsp
  {autoload {nvim aniseed.nvim
             lsp lspconfig
             cmp_lsp cmp_nvim_lsp}})

(let [on_attach (fn [client bufnr]
                  (let [buf_set_keymap (fn [mode mapping target] (nvim.buf_set_keymap bufnr {:noremap true}))]
                    (vim.cmd "command! Format execute 'lua vim.lsp.buf.formatting()")

                    ; TODO: maybe move to a data structure
                    (buf_set_keymap :n "<Leader>lk"  "<cmd>lua vim.lsp.buf.signature_help()<CR>")
                    (buf_set_keymap :n "<Leader>ltd" "<cmd>lua vim.lsp.buf.type_definition()<CR>")
                    (buf_set_keymap :n "<Leader>lca" "<cmd>lua vim.lsp.buf.code_action()<CR>")
                    (buf_set_keymap :n "<Leader>lld" "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>")
                    (buf_set_keymap :n "<Leader>lf"  "<cmd>lua vim.lsp.buf.formatting()<CR>")
                    (buf_set_keymap :n "<Leader>lic" "<cmd>lua vim.lsp.buf.incoming_calls()<CR>")
                    (buf_set_keymap :n "<Leader>lq"  "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>")
                    (buf_set_keymap :n "<Leader>lr"  "<cmd>lua vim.lsp.buf.rename()<CR>")
                    (buf_set_keymap :n "<Leader>lwa" "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>")
                    (buf_set_keymap :n "<Leader>lwl" "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>")
                    (buf_set_keymap :n "<Leader>lwr" "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>")
                    (buf_set_keymap :n "K"           "<cmd>lua vim.lsp.buf.hover()<CR>")
                    (buf_set_keymap :n "[d"          "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>")
                    (buf_set_keymap :n "]d"          "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>")
                    (buf_set_keymap :n "g0"          "<cmd>lua vim.lsp.buf.document_symbol()<CR>")
                    (buf_set_keymap :n "gD"          "<cmd>lua vim.lsp.buf.declaration()<CR>")
                    (buf_set_keymap :n "gW"          "<cmd>lua vim.lsp.buf.workspace_symbol()<CR>")
                    (buf_set_keymap :n "gd"          "<cmd>lua vim.lsp.buf.definition()<CR>")
                    (buf_set_keymap :n "gi"          "<cmd>lua vim.lsp.buf.implementation()<CR>")
                    (buf_set_keymap :n "gr"          "<cmd>lua vim.lsp.buf.references()<CR>")

                    ; telescope

                    (buf_set_keymap :n "<Leader>fca"  "<cmd>lua require('telescope.builtin').lsp_code_actions(require('telescope.themes').get_cursor())<CR>")
                    (buf_set_keymap :v "<Leader>frca" "<cmd>lua require('telescope.builtin').lsp_range_code_actions(require('telescope.themes').get_cursor())<CR>")
                    (buf_set_keymap :n "<Leader>fwd"  "<cmd>lua require('telescope.builtin').lsp_workspace_diagnostics(require('telescope.themes').get_dropdown({}))<CR>")
                    (buf_set_keymap :n "<Leader>fws"  "<cmd>lua require('telescope.builtin').lsp_workspace_symbols(require('telescope.themes').get_dropdown({}))<CR>")
                    (buf_set_keymap :n "<Leader>fr"   "<cmd>lua require('telescope.builtin').lsp_references(require('telescope.themes').get_dropdown({}))<CR>")
                    (buf_set_keymap :n "<Leader>fi"   "<cmd>lua require('telescope.builtin').lsp_implementations(require('telescope.themes').get_dropdown({}))<CR>")
                    ; clojure

                    (buf_set_keymap :n "<LocalLeader>cc" "<cmd>lua vim.lsp.buf.execute_command({command='cycle-coll',          arguments={ clojure_lsp_expand_buffer_uri(), vim.fn.line('.') - 1, vim.fn.col('.') - 1 }})<CR>")
                    (buf_set_keymap :n "<LocalLeader>cp" "<cmd>lua vim.lsp.buf.execute_command({command='cycle-privacy',       arguments={ clojure_lsp_expand_buffer_uri(), vim.fn.line('.') - 1, vim.fn.col('.') - 1 }})<CR>")
                    (buf_set_keymap :n "<LocalLeader>th" "<cmd>lua vim.lsp.buf.execute_command({command='thread-first',        arguments={ clojure_lsp_expand_buffer_uri(), vim.fn.line('.') - 1, vim.fn.col('.') - 1 }})<CR>")
                    (buf_set_keymap :n "<LocalLeader>tt" "<cmd>lua vim.lsp.buf.execute_command({command='thread-last',         arguments={ clojure_lsp_expand_buffer_uri(), vim.fn.line('.') - 1, vim.fn.col('.') - 1 }})<CR>")
                    (buf_set_keymap :n "<LocalLeader>tf" "<cmd>lua vim.lsp.buf.execute_command({command='thread-first-all',    arguments={ clojure_lsp_expand_buffer_uri(), vim.fn.line('.') - 1, vim.fn.col('.') - 1 }})<CR>")
                    (buf_set_keymap :n "<LocalLeader>tl" "<cmd>lua vim.lsp.buf.execute_command({command='thread-last-all',     arguments={ clojure_lsp_expand_buffer_uri(), vim.fn.line('.') - 1, vim.fn.col('.') - 1 }})<CR>")
                    (buf_set_keymap :n "<LocalLeader>am" "<cmd>lua vim.lsp.buf.execute_command({command='add-missing-libspec', arguments={ clojure_lsp_expand_buffer_uri(), vim.fn.line('.') - 1, vim.fn.col('.') - 1 }})<CR>")
                    (buf_set_keymap :n "<LocalLeader>el" "<cmd>lua vim.lsp.buf.execute_command({command='expand-let',          arguments={ clojure_lsp_expand_buffer_uri(), vim.fn.line('.') - 1, vim.fn.col('.') - 1 }})<CR>")
                    (buf_set_keymap :n "<LocalLeader>ml" "<cmd>lua vim.lsp.buf.execute_command({command='move-to-let',         arguments={ clojure_lsp_expand_buffer_uri(), vim.fn.line('.') - 1, vim.fn.col('.') - 1, vim.fn.input('Binding name: ') }})<CR>")
                    (buf_set_keymap :n "<LocalLeader>il" "<cmd>lua vim.lsp.buf.execute_command({command='introduce-let',       arguments={ clojure_lsp_expand_buffer_uri(), vim.fn.line('.') - 1, vim.fn.col('.') - 1, vim.fn.input('Binding name: ') }})<CR>")))

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

      capabilities (cmp_lsp.update_capabilities (vim.lsp.protocol.make_client_capabilities))]
  (lsp.clojure_lsp.setup {:on_attach on_attach
                          :handlers handlers
                          :capabilities capabilities}))
