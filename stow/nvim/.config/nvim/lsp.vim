" use <LocalLeader> K to get docstring trough REPL connection
let g:conjure#mapping#doc_word = "K"

" use K to get docstring trough static analysis
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>

" use <LocalLeader> gd to jump to definition trough REPL connection
let g:conjure#mapping#def_word = "gd"

" use gd to jump to definition trough static analysis
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>

" other LSP mappings
" please refer to `:help lsp` for a complete list
" nnoremap <silent> gr  <cmd>lua vim.lsp.buf.references()<CR>
" nnoremap <silent> g0  <cmd>lua vim.lsp.buf.document_symbol()<CR>
" nnoremap <silent> gW  <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
" nnoremap <silent> gA  <cmd>lua vim.lsp.buf.code_action()<CR>
" nnoremap <silent> gIC <cmd>lua vim.lsp.buf.incoming_calls()<CR>
" nnoremap <silent> gIM <cmd>lua vim.lsp.buf.implementation()<CR>
" nnoremap <silent> gx  <cmd>lua vim.lsp.buf.rename(vim.fn.input('New name: '))<CR>
" nnoremap <silent> gTD <cmd>lua vim.lsp.buf.type_definition()<CR>
" nnoremap <silent> gSH <cmd>lua vim.lsp.buf.signature_help()<CR>

" nnoremap <silent> <LocalLeader>crcc <cmd>lua vim.lsp.buf.execute_command({command='cycle-coll',          arguments={ vim.fn.expand('%:p'), vim.fn.line('.') - 1, vim.fn.col('.') - 1 }})<CR>
" nnoremap <silent> <LocalLeader>crth <cmd>lua vim.lsp.buf.execute_command({command='thread-first',        arguments={ vim.fn.expand('%:p'), vim.fn.line('.') - 1, vim.fn.col('.') - 1 }})<CR>
" nnoremap <silent> <LocalLeader>crtt <cmd>lua vim.lsp.buf.execute_command({command='thread-last',         arguments={ vim.fn.expand('%:p'), vim.fn.line('.') - 1, vim.fn.col('.') - 1 }})<CR>
" nnoremap <silent> <LocalLeader>crtf <cmd>lua vim.lsp.buf.execute_command({command='thread-first-all',    arguments={ vim.fn.expand('%:p'), vim.fn.line('.') - 1, vim.fn.col('.') - 1 }})<CR>
" nnoremap <silent> <LocalLeader>crtl <cmd>lua vim.lsp.buf.execute_command({command='thread-last-all',     arguments={ vim.fn.expand('%:p'), vim.fn.line('.') - 1, vim.fn.col('.') - 1 }})<CR>
" nnoremap <silent> <LocalLeader>crml <cmd>lua vim.lsp.buf.execute_command({command='move-to-let',         arguments={ vim.fn.expand('%:p'), vim.fn.line('.') - 1, vim.fn.col('.') - 1, vim.fn.input('Binding name: ') }})<CR>
" nnoremap <silent> <LocalLeader>cril <cmd>lua vim.lsp.buf.execute_command({command='introduce-let',       arguments={ vim.fn.expand('%:p'), vim.fn.line('.') - 1, vim.fn.col('.') - 1, vim.fn.input('Binding name: ') }})<CR>
" nnoremap <silent> <LocalLeader>crel <cmd>lua vim.lsp.buf.execute_command({command='expand-let',          arguments={ vim.fn.expand('%:p'), vim.fn.line('.') - 1, vim.fn.col('.') - 1 }})<CR>
" nnoremap <silent> <LocalLeader>cram <cmd>lua vim.lsp.buf.execute_command({command='add-missing-libspec', arguments={ vim.fn.expand('%:p'), vim.fn.line('.') - 1, vim.fn.col('.') - 1 }})<CR>

" disable linting while in insert mode
let g:diagnostic_insert_delay = 1

" use static analysis engine to autocomplete, but get results also from REPL if
" it is available
let g:completion_auto_change_source = 1
let g:completion_chain_complete_list = {
\ 'clojure': [
\   {'complete_items': ['conjure', 'lsp', 'snippet']}
\ ]
\}
