(local {: autoload} (require :nfnl.module))
(local leap (autoload :leap))

(fn setup []
  (leap.add_default_mappings))

{: setup}
