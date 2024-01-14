(local filetypes
  {:html
   (fn []
     (set vim.g.html_indent_script1 "inc")
     (set vim.g.html_indent_style1 "inc"))

   :conjure
   (fn []
     (set vim.g.clojure_fold 1)
     (set vim.g.clojure_align_multiline_strings 1)

     (local babashka-filetype-group (vim.api.nvim_create_augroup :babashka-filetype {:clear true}))
     (vim.api.nvim_create_autocmd [:BufEnter :BufNew]
                                  {:pattern "*.bb"
                                   :command ":setfiletype clojure"
                                   :group babashka-filetype-group}))})

(fn init []
  (each [_ filetype-fn (pairs filetypes)]
    (filetype-fn)))

{: init}
