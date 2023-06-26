(module config.plugins.luasnip
  {autoload {luasnip luasnip
             from_vscode luasnip.loaders.from_vscode}})

(defn setup []
  (luasnip.filetype_extend "javascript" ["react" "html"])
  (from_vscode.lazy_load))
