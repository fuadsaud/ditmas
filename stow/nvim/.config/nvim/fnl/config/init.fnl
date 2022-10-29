(module config.init
  {autoload {diagnostic config.diagnostic
             plugins config.plugins}})

(diagnostic.init)
(plugins.init)
