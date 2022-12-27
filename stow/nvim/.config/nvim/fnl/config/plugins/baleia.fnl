(module config.plugins.baleia
  {autoload {baleia baleia}
   require-macros [lib.macros]})

(defn config []
  (baleia.setup {}))
