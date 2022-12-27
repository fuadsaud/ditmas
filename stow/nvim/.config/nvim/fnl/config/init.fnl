(module config.init
  {autoload {colors config.colors
             diagnostic config.diagnostic
             filetypes config.filetypes
             plugins config.plugins}})

(colors.init)
(diagnostic.init)
(filetypes.init)
(plugins.init)
