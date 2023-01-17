(module config.plugins.lualine
  {autoload {lualine lualine
             a aniseed.core
             rhizome rhizome
             monrovia monrovia.lualine}})

(defn config []
  (lualine.setup {:options {:theme :rose-pine}
                  :tabline {:lualine_a [(fn [] (vim.fn.getcwd))]
                            :lualine_z [{1 :tabs
                                         :mode 3
                                         :fmt (fn [_name context]
                                                (rhizome.label_for_tabnr (. context :tabnr)))}]}
                  :sections {:lualine_c [{1 :filename
                                          :path 1}]}}))
