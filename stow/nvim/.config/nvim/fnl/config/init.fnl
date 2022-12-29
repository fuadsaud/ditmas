(module config.init
  {autoload {colors config.colors
             diagnostic config.diagnostic
             filetypes config.filetypes
             netrw config.netrw
             plugins config.plugins}})

(def modules
  [colors
   diagnostic
   filetypes
   netrw
   plugins])

(each [_ mod (ipairs modules)]
  (mod.init))
