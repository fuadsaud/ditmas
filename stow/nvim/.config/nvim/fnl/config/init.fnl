(module config.init
  {autoload {colors config.colors
             diagnostic config.diagnostic
             filetypes config.filetypes
             netrw config.netrw
             rhizome config.rhizome
             plugins config.plugins}})

(def modules
  [colors
   diagnostic
   filetypes
   netrw
   plugins
   rhizome])

(each [_ mod (ipairs modules)]
  (mod.init))
