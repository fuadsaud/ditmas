(local {: autoload} (require :nfnl.module))
(local colorizer (autoload :colorizer))

(fn setup []
  (vim.notify "Running config.plugins.colorizer/setup")

  (set vim.o.termguicolors true)

  (colorizer.setup {}))

{: setup}
