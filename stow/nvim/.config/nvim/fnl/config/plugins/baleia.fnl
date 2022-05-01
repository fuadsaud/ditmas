(module config.plugins.baleia
  {autoload {baleia baleia}
   require-macros [config.macros]})

(defn config []
  (baleia.setup {}))
