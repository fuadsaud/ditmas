(module config.filetypes
  {require-macros [lib.macros]})

(local filetypes
  {:html
   (fn []
     (set vim.g.html_indent_script1 "inc")
     (set vim.g.html_indent_style1 "inc"))

   :conjure
   (fn []
     (set vim.g.clojure_fold 1)
     (set vim.g.clojure_align_multiline_strings 1)

     (augroup :babashka_filetype
              (autocmd "BufEnter,BufNew" "*.bb" :setfiletype :clojure)))})

(defn init []
  (each [_ filetype-fn (pairs filetypes)]
    (filetype-fn)))
