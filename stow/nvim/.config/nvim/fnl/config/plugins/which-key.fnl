(module config.plugins.which-key
  {autoload {nvim aniseed.nvim
             a aniseed.core
             which-key which-key}})

(defn setup []
  (which-key.setup {}))
