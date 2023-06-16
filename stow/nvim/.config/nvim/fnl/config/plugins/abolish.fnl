(module config.plugins.abolish)

(local mappings
  {"notoin" "notion"
   "envi{n,}roment" "environment"})

(defn config []
  (each [from to (pairs mappings)]
    (vim.cmd {:cmd :Abolish :args [from to]})))
