(local mappings
  {"notoin" "notion"
   "envi{n,}roment" "environment"})

(fn setup []
  (each [from to (pairs mappings)]
    (vim.cmd {:cmd :Abolish :args [from to]})))

{: setup}
