(module config.netrw)

(defn init []
  (set vim.g.netrw_browse_split 0)
  (set vim.g.netrw_liststyle 3)
  (set vim.g.netrw_preview 1))
