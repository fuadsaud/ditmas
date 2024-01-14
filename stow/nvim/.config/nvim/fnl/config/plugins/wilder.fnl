(local {: autoload} (require :nfnl.module))
(local wilder (autoload :wilder))

(fn setup []
  (wilder.setup {:modes [":" "/" "?"]}))

{: setup}
