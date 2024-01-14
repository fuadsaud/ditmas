(local {: autoload} (require :nfnl.module))
(local gitsigns (autoload :gitsigns))
(local nfnl-core (autoload :nfnl.core))

(fn setup []
  (gitsigns.setup
    {:on_attach
     (fn [bufnr]
       (vim.notify "Running config.plugins.gitsigns/on_attach")

       (let [buf-set-keymap-fn (fn [mode mapping target-fn opts]
                                 (vim.keymap.set mode mapping target-fn (nfnl-core.merge
                                                                          {:buffer bufnr
                                                                           :noremap true}
                                                                          opts)))]

         (buf-set-keymap-fn :n "]c" (fn []
                                      (if vim.wo.diff
                                       "]c"
                                       (do
                                         (vim.schedule #(gitsigns.next_hunk))
                                         "<Ignore>"))
                                      {}))

         (buf-set-keymap-fn :n "[c" (fn []
                                      (if vim.wo.diff
                                       "[c"
                                       (do
                                         (vim.schedule #(gitsigns.prev_hunk))
                                         "<Ignore>"))
                                      {}))

         (buf-set-keymap-fn :n "<Leader>hs" gitsigns.stage_hunk)
         (buf-set-keymap-fn :n "<Leader>hr" gitsigns.reset_hunk)
         (buf-set-keymap-fn :v "<Leader>hs" #(gitsigns.stage_hunk [(vim.fn.line :.) (vim.fn.line :v)]))
         (buf-set-keymap-fn :v "<Leader>hs" #(gitsigns.reset_hunk [(vim.fn.line :.) (vim.fn.line :v)]))
         (buf-set-keymap-fn :n "<Leader>hS" gitsigns.stage_buffer)
         (buf-set-keymap-fn :n "<Leader>hu" gitsigns.undo_stage_hunk)
         (buf-set-keymap-fn :n "<Leader>hR" gitsigns.reset_buffer)
         (buf-set-keymap-fn :n "<Leader>hp" gitsigns.preview_hunk)
         (buf-set-keymap-fn :n "<Leader>hb" #(gitsigns.blame_line {:full true}))
         (buf-set-keymap-fn :n "<Leader>tb" gitsigns.toggle_current_line_blame)
         (buf-set-keymap-fn :n "<Leader>hd" gitsigns.diffthis)
         (buf-set-keymap-fn :n "<Leader>hD" #(gitsigns.diffthis "~"))
         (buf-set-keymap-fn :n "<Leader>td" gitsigns.toggle_deleted)

         (buf-set-keymap-fn [:o :x] "ih" ":<C-U>Gitsigns select_hunk<CR>")))}))

{: setup}
