(module lib.highlight
  {autoload {nvim aniseed.nvim
             util aniseed.nvim.util}})

(defn- get-hl [name]
  (let [(_ _ hl) (-> (partial nvim.ex.silent :highlight name)
                     util.with-out-str
                     (string.find "xxx (.*)\n"))]
    (match (string.find hl "links to (%a+)")
      nil hl
      (_ _ n) (get-hl n))))

(defn- conj-val [vals v]
  (if (string.find vals v) vals (.. vals "," v)))

(defn- conj-hl [hl k v]
  (let [prefix (.. k "=")]
    (match (string.gsub hl (.. prefix "(%a+)") #(.. prefix (conj-val $ v)) 1)
      (hl* 1) hl*
      (hl* 0) (.. hl* " " prefix v))))

(defn make-italic [name]
  (nvim.ex.highlight name (-> name get-hl (conj-hl :gui :italic))))
