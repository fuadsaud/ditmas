(module config.plugins.baleia
  {autoload {baleia baleia}})

(defn setup []
  (baleia.setup {}))
