lua << EOF
local nvim_lsp = require('lspconfig')

clojure_lsp_expand_buffer_uri = function()
  local result = vim.fn.expand('%:p')

  if result == '' then
    return ''
  else
    return 'file://' .. result
  end
end

local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end


  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
  local opts = { noremap=true, silent=false }

  buf_set_keymap('n', '<C-k>',      '<cmd>lua vim.lsp.buf.signature_help()<CR>',                             opts)
  buf_set_keymap('n', '<Leader>D',  '<cmd>lua vim.lsp.buf.type_definition()<CR>',                            opts)
  buf_set_keymap('n', '<Leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>',                                opts)
  buf_set_keymap('n', '<Leader>e',  '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>',               opts)
  buf_set_keymap('n', '<Leader>f',  '<cmd>lua vim.lsp.buf.formatting()<CR>',                                 opts)
  buf_set_keymap('n', '<Leader>q',  '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>',                         opts)
  buf_set_keymap('n', '<Leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>',                                     opts)
  buf_set_keymap('n', '<Leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>',                       opts)
  buf_set_keymap('n', '<Leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', '<Leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>',                    opts)
  buf_set_keymap('n', 'K',          '<cmd>lua vim.lsp.buf.hover()<CR>',                                      opts)
  buf_set_keymap('n', '[d',         '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>',                           opts)
  buf_set_keymap('n', ']d',         '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>',                           opts)
  buf_set_keymap('n', 'g0',         '<cmd>lua vim.lsp.buf.document_symbol()<CR>',                            opts)
  buf_set_keymap('n', 'gD',         '<cmd>lua vim.lsp.buf.declaration()<CR>',                                opts)
  buf_set_keymap('n', 'gIC',        '<cmd>lua vim.lsp.buf.incoming_calls()<CR>',                             opts)
  buf_set_keymap('n', 'gW',         '<cmd>lua vim.lsp.buf.workspace_symbol()<CR>',                           opts)
  buf_set_keymap('n', 'gd',         '<cmd>lua vim.lsp.buf.definition()<CR>',                                 opts)
  buf_set_keymap('n', 'gi',         '<cmd>lua vim.lsp.buf.implementation()<CR>',                             opts)
  buf_set_keymap('n', 'gr',         '<cmd>lua vim.lsp.buf.references()<CR>',                                 opts)

  vim.cmd [[ command! Format execute 'lua vim.lsp.buf.formatting()' ]]

  -- clojure

  buf_set_keymap('n', '<LocalLeader>crcc', '<cmd>lua vim.lsp.buf.execute_command({command=\'cycle-coll\',          arguments={ clojure_lsp_expand_buffer_uri(), vim.fn.line(\'.\') - 1, vim.fn.col(\'.\') - 1 }})<CR>',                                   opts)
  buf_set_keymap('n', '<LocalLeader>crcp', '<cmd>lua vim.lsp.buf.execute_command({command=\'cycle-privacy\',       arguments={ clojure_lsp_expand_buffer_uri(), vim.fn.line(\'.\') - 1, vim.fn.col(\'.\') - 1 }})<CR>',                                   opts)
  buf_set_keymap('n', '<LocalLeader>crth', '<cmd>lua vim.lsp.buf.execute_command({command=\'thread-first\',        arguments={ clojure_lsp_expand_buffer_uri(), vim.fn.line(\'.\') - 1, vim.fn.col(\'.\') - 1 }})<CR>',                                   opts)
  buf_set_keymap('n', '<LocalLeader>crtt', '<cmd>lua vim.lsp.buf.execute_command({command=\'thread-last\',         arguments={ clojure_lsp_expand_buffer_uri(), vim.fn.line(\'.\') - 1, vim.fn.col(\'.\') - 1 }})<CR>',                                   opts)
  buf_set_keymap('n', '<LocalLeader>crtf', '<cmd>lua vim.lsp.buf.execute_command({command=\'thread-first-all\',    arguments={ clojure_lsp_expand_buffer_uri(), vim.fn.line(\'.\') - 1, vim.fn.col(\'.\') - 1 }})<CR>',                                   opts)
  buf_set_keymap('n', '<LocalLeader>crtl', '<cmd>lua vim.lsp.buf.execute_command({command=\'thread-last-all\',     arguments={ clojure_lsp_expand_buffer_uri(), vim.fn.line(\'.\') - 1, vim.fn.col(\'.\') - 1 }})<CR>',                                   opts)
  buf_set_keymap('n', '<LocalLeader>crml', '<cmd>lua vim.lsp.buf.execute_command({command=\'move-to-let\',         arguments={ clojure_lsp_expand_buffer_uri(), vim.fn.line(\'.\') - 1, vim.fn.col(\'.\') - 1, vim.fn.input(\'Binding name: \') }})<CR>', opts)
  buf_set_keymap('n', '<LocalLeader>cril', '<cmd>lua vim.lsp.buf.execute_command({command=\'introduce-let\',       arguments={ clojure_lsp_expand_buffer_uri(), vim.fn.line(\'.\') - 1, vim.fn.col(\'.\') - 1, vim.fn.input(\'Binding name: \') }})<CR>', opts)
  buf_set_keymap('n', '<LocalLeader>crel', '<cmd>lua vim.lsp.buf.execute_command({command=\'expand-let\',          arguments={ clojure_lsp_expand_buffer_uri(), vim.fn.line(\'.\') - 1, vim.fn.col(\'.\') - 1 }})<CR>',                                   opts)
  buf_set_keymap('n', '<LocalLeader>cram', '<cmd>lua vim.lsp.buf.execute_command({command=\'add-missing-libspec\', arguments={ clojure_lsp_expand_buffer_uri(), vim.fn.line(\'.\') - 1, vim.fn.col(\'.\') - 1 }})<CR>',                                   opts)
end


local servers = { 'clojure_lsp' }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    }
  }
end

vim.lsp.set_log_level("debug")
EOF
