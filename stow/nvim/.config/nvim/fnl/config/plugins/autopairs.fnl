(module config.plugins.autopairs
  {autoload {autopairs nvim-autopairs}})

(autopairs.setup {:disable_filetype ["TelescopePrompt" "vim" "clojure" "fennel"]})
