(module config.plugins.abolish)

(local mappings
  {"notoin" "notion"})

(defn config []
  (print "blah!")
  (each [from to (pairs mappings)]
    (vim.cmd {:cmd :Abolish :args [from to]})))
