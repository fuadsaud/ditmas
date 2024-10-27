(local {: autoload} (require :nfnl.module))
(local luasnip (autoload :luasnip))
(local from_vscode (autoload :luasnip.loaders.from_vscode))
(local from_snipmate (autoload :luasnip.loaders.from_snipmate))

(fn setup []
  (luasnip.filetype_extend "javascript" ["react" "html"])
  (luasnip.filetype_extend "typescript" ["javascript"])

  (from_vscode.lazy_load)
  (from_snipmate.lazy_load))

{: setup}
