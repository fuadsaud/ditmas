(fn get-hl [name]
  (let [(_ _ hl) (-> (vim.api.nvim_exec2 (.. "highlight " name) {:output true})
                     (. :output)
                     (string.find "xxx (.*)"))]
    (match (string.find hl "links to (%a+)")
      nil hl
      (_ _ n) (get-hl n))))

(fn conj-val [vals v]
  (if (string.find vals v) vals (.. vals "," v)))

(fn conj-hl [hl k v]
  (let [prefix (.. k "=")]
    (match (string.gsub hl (.. prefix "(%a+)") #(.. prefix (conj-val $ v)) 1)
      (hl* 1) hl*
      (hl* 0) (.. hl* " " prefix v))))

(fn make-italic [name]
  (vim.cmd.highlight name (-> name get-hl (conj-hl :gui :italic))))

{: get-hl
 : conj-val
 : make-italic}
