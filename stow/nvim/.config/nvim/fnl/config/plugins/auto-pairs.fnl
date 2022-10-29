(module config.plugins.auto-pairs
  {require-macros [config.macros]})

(defn config []
  (comment
    (print "Running config.plugins.auto-pairs/config")

    (augroup :auto-pairs-sexp-disable
      (autocmd :FileType "clojure,scheme,fennel" "let b:AutoPairs = ''"))))
