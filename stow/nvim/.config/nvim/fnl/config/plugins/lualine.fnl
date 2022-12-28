(module config.plugins.lualine
  {autoload {lualine lualine
             a aniseed.core
             monrovia monrovia.lualine}})

(defn config []
  (lualine.setup {:options {:theme :rose-pine} ;monrovia.theme}
                  :tabline {:lualine_a [(fn [] (vim.fn.getcwd))]
                            :lualine_z [{1 :tabs
                                         :mode 3
                                         :fmt (fn [_name _context]
                                                (let [path-segments (vim.split (vim.fn.getcwd) "/")
                                                      path-length (length path-segments)]
                                                  (. path-segments path-length)))}]}
                  :sections {:lualine_c [{1 :filename
                                          :path 1}]}}))
