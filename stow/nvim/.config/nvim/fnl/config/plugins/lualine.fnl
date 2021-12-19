(module config.plugins.lualine
  {autoload {lualine lualine
             monrovia monrovia.lualine}})

(lualine.setup {:options {:theme monrovia.theme}})

