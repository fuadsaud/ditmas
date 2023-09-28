(module config.plugins.colorizer
  {autoload {colorizer colorizer}})

(defn setup []
  (vim.notify "Running config.plugins.colorizer/setup")

  (set vim.o.termguicolors true)

  (colorizer.setup {}))
