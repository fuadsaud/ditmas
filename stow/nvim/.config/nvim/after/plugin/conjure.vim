let g:conjure#client#scheme#stdio#command = "csi -quiet -:c"
let g:conjure#client#scheme#stdio#prompt_pattern = "\n-#;%d-> "
let g:conjure#client#clojure#nrepl#test#runner = "kaocha"
let g:conjure#client#clojure#nrepl#test#call_suffix="{:kaocha/color? true}"
let g:conjure#log#strip_ansi_escape_sequences_line_limit = 0

let s:baleia = luaeval("require('baleia').setup { line_starts_at = 3 }")
autocmd BufWinEnter conjure-log-* call s:baleia.automatically(bufnr('%'))

let g:conjure#mapping#doc_word = "<LocalLeader>K"
let g:conjure#mapping#def_word = "<LocalLeader>gd"

let g:conjure#relative_file_root = getcwd()
let g:conjure#client#clojure#nrepl#refresh#before = "user/stop"
let g:conjure#client#clojure#nrepl#refresh#after  = "user/start"

let g:conjure#log#wrap = v:true

autocmd BufNewFile conjure-log-* lua vim.diagnostic.disable(0)
