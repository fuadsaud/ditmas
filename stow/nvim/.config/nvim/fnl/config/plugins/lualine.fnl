(module config.plugins.lualine
  {autoload {lualine lualine
             monrovia monrovia.lualine}})

(defn setup []
  (lualine.setup {:options {:theme monrovia.theme}}))
