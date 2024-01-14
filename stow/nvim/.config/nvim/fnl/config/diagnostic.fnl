(local {: autoload} (require :nfnl.module))
(local highlight (autoload :lib.highlight))

(local signs {:Error "!"
              :Warn  "*"
              :Info  "~"
              :Hint  "?"})

(each [s t (pairs signs)]
  (let [name (.. :DiagnosticSign s)]
    (vim.fn.sign_define name {:text (.. " " t) :texthl name :numhl name})))

(fn update-highlights []
  (highlight.make-italic :DiagnosticError)
  (highlight.make-italic :DiagnosticWarn)
  (highlight.make-italic :DiagnosticInfo)
  (highlight.make-italic :DiagnosticHint))

(local config-diagnostic-group (vim.api.nvim_create_augroup :config-diagnostic {:clear true}))
(vim.api.nvim_create_autocmd :ColorScheme
                             {:pattern "*"
                              :callback update-highlights
                              :group config-diagnostic-group})

(fn init []
  (update-highlights)

  (vim.diagnostic.config
    {:update_in_insert true
     :virtual_text {:prefix "•"}
     :severity_sort true}))

{: init}
