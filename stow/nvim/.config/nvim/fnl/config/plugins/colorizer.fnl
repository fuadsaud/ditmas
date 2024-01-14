(local {: autoload} (require :nfnl.module))
(local colorizer (autoload :colorizer))

(fn setup []
  (set vim.o.termguicolors true)

  (colorizer.setup {}))

{: setup}
