(module config.lsp.shared
  {autoload {nvim aniseed.nvim
             cmp_lsp cmp_nvim_lsp}})

(defn on_attach [client bufnr]
  (let [buf-set-keymap (fn [mode mapping target] (nvim.buf_set_keymap bufnr mode mapping target {:noremap true}))
        buf-set-option (fn [opt val] (nvim.buf_set_option bufnr opt val))]
    (buf-set-option "omnifunc" "v:lua.vim.lsp.omnifunc")

    (print "Running config.lsp.shared.on_attach")

    ; references
    (buf-set-keymap :n "K"           "<cmd>lua vim.lsp.buf.hover()<CR>")
    (buf-set-keymap :n "<Leader>lk"  "<cmd>lua vim.lsp.buf.signature_help()<CR>")
    (buf-set-keymap :n "<Leader>ltd" "<cmd>lua vim.lsp.buf.type_definition()<CR>")
    (buf-set-keymap :n "<Leader>lic" "<cmd>lua vim.lsp.buf.incoming_calls()<CR>")
    (buf-set-keymap :n "gr"          "<cmd>lua vim.lsp.buf.references()<CR>")
    (buf-set-keymap :n "gR"          "<cmd>TroubleToggle lsp_references<CR>")
    (buf-set-keymap :n "gd"          "<cmd>lua vim.lsp.buf.definition()<CR>")
    (buf-set-keymap :n "g0"          "<cmd>lua vim.lsp.buf.document_symbol()<CR>")
    (buf-set-keymap :n "gD"          "<cmd>lua vim.lsp.buf.declaration()<CR>")
    (buf-set-keymap :n "gW"          "<cmd>lua vim.lsp.buf.workspace_symbol()<CR>")
    (buf-set-keymap :n "gi"          "<cmd>lua vim.lsp.buf.implementation()<CR>")

    (buf-set-keymap :n "<Leader>lca" "<cmd>lua vim.lsp.buf.code_action()<CR>")
    (buf-set-keymap :n "<Leader>lf"  "<cmd>lua vim.lsp.buf.format()<CR>")
    (buf-set-keymap :n "<Leader>lr"  "<cmd>lua vim.lsp.buf.rename()<CR>")
    (buf-set-keymap :n "<Leader>lwa" "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>")
    (buf-set-keymap :n "<Leader>lwl" "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>")
    (buf-set-keymap :n "<Leader>lwr" "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>")

    ; telescope
    (buf-set-keymap :n "<Leader>fca"  "<cmd>lua require('telescope.builtin').lsp_code_actions(require('telescope.themes').get_ivy())<CR>")
    (buf-set-keymap :v "<Leader>frca" "<cmd>lua require('telescope.builtin').lsp_range_code_actions(require('telescope.themes').get_ivy())<CR>")
    (buf-set-keymap :n "<Leader>fws"  "<cmd>lua require('telescope.builtin').lsp_workspace_symbols(require('telescope.themes').get_ivy({}))<CR>")
    (buf-set-keymap :n "<Leader>fds"  "<cmd>lua require('telescope.builtin').lsp_document_symbols(require('telescope.themes').get_ivy({}))<CR>")
    (buf-set-keymap :n "<Leader>fr"   "<cmd>lua require('telescope.builtin').lsp_references(require('telescope.themes').get_ivy({}))<CR>")
    (buf-set-keymap :n "<Leader>fi"   "<cmd>lua require('telescope.builtin').lsp_implementations(require('telescope.themes').get_ivy({}))<CR>")))

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
