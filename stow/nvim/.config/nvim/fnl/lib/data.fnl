(module lib.data)

(defn map-kv
  [f associative]
  (->> associative
       a.kv-pairs
       (a.map f)
       (a.reduce a.merge {})))
