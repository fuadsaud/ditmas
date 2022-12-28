(module config.filetypes
  {require-macros [lib.macros]})

(defn init-clojure []
  (set vim.g.clojure_fold 1)
  (set vim.g.clojure_align_multiline_strings 1)

  (augroup :babashka_filetype
    (autocmd "BufEnter,BufNew" "*.bb" :setfiletype :clojure)))

(defn init []
  (init-clojure))
