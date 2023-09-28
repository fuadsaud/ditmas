(module config.plugins.luasnip
  {autoload {luasnip luasnip
             from_vscode luasnip.loaders.from_vscode}})

(defn setup []
  (luasnip.filetype_extend "javascript" ["react" "html"])
  (luasnip.filetype_extend "typescript" ["javascript"])

  (from_vscode.lazy_load))
