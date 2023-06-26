(module config.init
  {autoload {colors config.colors
             diagnostic config.diagnostic
             filetypes config.filetypes
             netrw config.netrw
             plugins config.plugins}})

(vim.loader.enable)

(def modules
  [plugins
   colors
   diagnostic
   filetypes
   netrw])

(each [_ mod (ipairs modules)]
  (mod.init))
