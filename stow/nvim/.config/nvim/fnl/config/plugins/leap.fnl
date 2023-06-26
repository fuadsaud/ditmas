(module config.plugins.leap
  {autoload {leap leap}})

(defn setup []
  (leap.add_default_mappings))
