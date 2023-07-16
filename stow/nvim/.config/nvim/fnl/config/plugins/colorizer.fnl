(module config.plugins.colorizer
  {autoload {colorizer colorizer}})

(defn setup []
  (print "Running config.plugins.colorizer/setup")

  (set vim.opt.termguicolors true)

  (colorizer.setup {}))
