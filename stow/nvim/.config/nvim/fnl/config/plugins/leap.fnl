(module config.plugins.leap
  {autoload {leap leap}})

(defn config []
  (leap.add_default_mappings))
