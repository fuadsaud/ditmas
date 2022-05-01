(module config.plugins.lualine
  {autoload {lualine lualine
             monrovia monrovia.lualine}})

(defn config []
  (lualine.setup {:options {:theme monrovia.theme}
                  :sections {:lualine_c [{1 :filename
                                          :path 1}]}}))
