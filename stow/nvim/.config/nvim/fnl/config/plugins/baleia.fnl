(module config.plugins.baleia
  {autoload {baleia baleia}})

(defn config []
  (baleia.setup {}))
