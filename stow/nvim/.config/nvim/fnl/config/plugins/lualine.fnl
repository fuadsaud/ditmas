(module config.plugins.lualine
  {autoload {lualine lualine
             monrovia config.plugins.lualine.monrovia}})

(lualine.setup {:options {:icons-enabled true
                          :theme monrovia.theme}})

