(module config.colors)

(def colorscheme
  ; :monrovia)
  :rose-pine)

(defn init []
  (vim.cmd {:cmd :colorscheme :args [colorscheme]}))
