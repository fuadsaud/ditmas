(module config.plugins.wilder
  {autoload {wilder wilder}})

(defn setup []
  (wilder.setup {:modes [":" "/" "?"]}))
