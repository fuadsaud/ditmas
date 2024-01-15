(local {: autoload} (require :nfnl.module))
(local wk (autoload :which-key))

(fn init [])
  ; (wk.register
  ;   {"-" ["<cmd>Oil<CR>" "Open Oil file browser"]})

  ; (wk.register
  ;   {"<Leader><Bslash>" ["<cmd>Lazy<CR>" "Open Lazy"]})

  ; (wk.register
  ;   {:Q "@"}))

  ; (wk.register
  ;   {:<Leader>
  ;    {:xx ["<cmd>TroubleToggle<CR>"
  ;          "Toggle Trouble"]

  ;     :xw ["<cmd>TroubleToggle workspace_diagnostics<CR>"
  ;          "Toggle Trouble workspace diagnostics"]
      
  ;     :xd ["<cmd>TroubleToggle document_diagnostics<CR>"
  ;          "Toggle Trouble document diagnostics"]
      
  ;     :xq ["<cmd>TroubleToggle quickfix<CR>"
  ;          "Toggle Trouble quickfix window"]
      
  ;     :xl ["<cmd>TroubleToggle loclist<CR>"
  ;          "Toggle Trouble loclist"]}})) 

{: init}
