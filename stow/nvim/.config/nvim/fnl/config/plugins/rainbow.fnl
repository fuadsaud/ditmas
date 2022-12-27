(module config.plugins.rainbow)

(defn config []
  (print "config.plugins.rainbow/config")

  (vim.api.nvim_set_var :rainbow_active 1))

  ;; TODO: figure out how to pull these dynamically from the colorscheme. These are the colors for the Monorvia
  ;; colorscheme.
  ; (let [colors ["#538798"
  ;               "#A1617A"
  ;               "#60A195"
  ;               "#B55242"
  ;               "#9E7156"
  ;               "#7F4C60"
  ;               "#8C3432"
  ;               "#C77366"]]
  ;   (vim.api.nvim_set_var :rainbow_conf {:guifgs colors})))
