(module config.plugins.gitsigns
  {autoload {gitsigns gitsigns}})


(defn config []
  (gitsigns.setup {}))
