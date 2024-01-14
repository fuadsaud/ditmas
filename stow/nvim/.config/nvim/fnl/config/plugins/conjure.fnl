(local {: autoload} (require :nfnl.module))
(local baleia (autoload :baleia))

(fn setup []
  (set vim.g.conjure#client#scheme#stdio#command "csi -quiet -:c")
  (set vim.g.conjure#client#scheme#stdio#prompt_pattern "\n-#;%d-> ")
  (set vim.g.conjure#client#clojure#nrepl#test#runner "kaocha")
  (set vim.g.conjure#client#clojure#nrepl#test#call_suffix "{:kaocha/color? true}")

  (set vim.g.conjure#mapping#doc_word "<LocalLeader>K")
  (set vim.g.conjure#mapping#def_word "<LocalLeader>gd")

  (set vim.g.conjure#relative_file_root (vim.fn.getcwd))
  (set vim.g.conjure#client#clojure#nrepl#refresh#before "user/stop")
  (set vim.g.conjure#client#clojure#nrepl#refresh#after  "user/start")

  (set vim.g.conjure#log#wrap true)
  (set vim.g.conjure#log#strip_ansi_escape_sequences_line_limit 0)

  (local {: automatically} (baleia.setup {:line_starts_at 3}))

  (vim.api.nvim_create_autocmd :BufWinEnter
                               {:pattern "conjure-log-*"
                                :callback #(automatically (vim.fn.bufnr :%))})

  (vim.api.nvim_create_autocmd :BufNewFile
                               {:pattern "conjure-log-*"
                                :callback #(vim.diagnostic.disable 0)}))

{: setup}
