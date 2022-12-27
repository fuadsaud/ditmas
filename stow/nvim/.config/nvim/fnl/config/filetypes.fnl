(module config.filetypes
  {require-macros [lib.macros]})

(defn init []
  (augroup :filetypes
    (autocmd "BufEnter,BufNew"  "*.bb" :setfiletype :clojure)))
