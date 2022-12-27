(module config.plugins.colorizer
  {autoload {colorizer colorizer}})

(defn config []
  (colorizer.setup {}))
