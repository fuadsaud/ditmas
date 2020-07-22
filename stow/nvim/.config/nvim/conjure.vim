" use <local leader> K to get docstring trough REPL connection
let g:conjure#mapping#doc_word = "K"

" use K to get docstring trough static analysis
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>

" use gd to jump to definition trough REPL connection
let g:conjure#mapping#def_word = "gd"

" use gd to jump to definition trough static analysis
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>

" other LSP mappings
" please refer to `:help lsp` for a complete list
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0 <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <silent> gA <cmd>lua vim.lsp.buf.code_action()<CR>

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
