" conjure

" support for ANSI coloring in the conjure log
let g:conjure#log#strip_ansi_escape_sequences_line_limit = 0
let s:baleia = luaeval("require('baleia').setup { line_starts_at = 3 }")
autocmd BufWinEnter conjure-log-* call s:baleia.automatically(bufnr('%'))

" use <LocalLeader> K to get docstring trough REPL connection
let g:conjure#mapping#doc_word = "K"

" use <LocalLeader> gd to jump to definition trough REPL connection
let g:conjure#mapping#def_word = "gd"

