(module config.plugins.luasnip
  {autoload {luasnip luasnip
             from_vscode luasnip.loaders.from_vscode}})

(defn config []
  (luasnip.filetype_extend "javascript" ["react" "html"])
  (from_vscode.lazy_load))
