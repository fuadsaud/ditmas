(module config.plugins.trouble
  {autoload {trouble trouble
             which-key which-key}})

(defn setup []
  (print "Running config.plugins.trouble/config")

  (trouble.setup {}))

  ; (which-key.register {[:<Leader>x]  {:name "Trouble"}
  ;                      [:<Leader>xx] ["<cmd>TroubleToggle"                       "Toggle Trouble"]
  ;                      [:<Leader>xw] ["<cmd>TroubleToggle workspace_diagnostics" "Toggle Trouble workspace diagnostics"]
  ;                      [:<Leader>xd] ["<cmd>TroubleToggle document_diagnostics"  "Toggle Trouble document diagnostics"]
  ;                      [:<Leader>xq] ["<cmd>TroubleToggle quickfix"              "Toggle Trouble quickfix list"]
  ;                      [:<Leader>xl] ["<cmd>TroubleToggle loclist"               "Toggle Trouble loclist"]
  ;                      [:gR]         ["<cmd>TroubleToggle lsp_references"        "Show LSP References"]}))
