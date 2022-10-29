(module config.diagnostic
  {require-macros [config.macros]})

(def- signs {:Error "!"
             :Warn  "*"
             :Info  "~"
             :Hint  "?"})

(each [s t (pairs signs)]
  (let [name (.. :DiagnosticSign s)]
    (vim.fn.sign_define name {:text (.. " " t) :texthl name :numhl name})))

(defn update-highlights []
  (highlight.make-italic :DiagnosticError)
  (highlight.make-italic :DiagnosticWarn)
  (highlight.make-italic :DiagnosticInfo)
  (highlight.make-italic :DiagnosticHint))

(augroup :config_diagnostic
  (autocmd :ColorScheme "*" update-highlights))

(defn init []
  (vim.diagnostic.config
    {:update_in_insert true
     :severity_sort true}))
