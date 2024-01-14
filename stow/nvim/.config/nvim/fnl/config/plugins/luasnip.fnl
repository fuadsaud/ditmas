(local {: autoload} (require :nfnl.module))
(local luasnip (autoload :luasnip))
(local from_vscode (autoload :luasnip.loaders.from_vscode))

(fn setup []
  (luasnip.filetype_extend "javascript" ["react" "html"])
  (luasnip.filetype_extend "typescript" ["javascript"])

  (from_vscode.lazy_load))

{: setup}
