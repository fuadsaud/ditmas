(module config.lsp.clojure
  {autoload {nvim aniseed.nvim
             a aniseed.core
             lspconfig lspconfig}})

(defn- expand_path_uri []
  (a.str "file://" (vim.fn.expand "%:p")))

(defn- on-attach [client bufnr]
  (let [buf-set-keymap (fn [mode mapping target] (nvim.buf_set_keymap bufnr mode mapping target {:noremap true}))]
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

(defn opts [default-server-opts]
  (a.assoc default-server-opts :on_attach (fn [client bufnr]
                                            (default-server-opts.on_attach client bufnr)
                                            (on-attach client bufnr))))
