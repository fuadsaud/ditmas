(local mappings
  {"notoin" "notion"
   "envi{n,}roment" "environment"
   "dicionary" "dictionary"})

(fn setup []
  (each [from to (pairs mappings)]
    (vim.cmd {:cmd :Abolish :args [from to]})))

{: setup}
