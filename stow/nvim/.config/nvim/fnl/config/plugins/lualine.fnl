(local {: autoload} (require :nfnl.module))
(local lualine (autoload :lualine))
(local rhizome (autoload :rhizome))
(local lazy-status (autoload :lazy.status))
(local nfnl-core (autoload :nfnl.core))

(fn setup []
  (set vim.opt.laststatus 3)

  (let [filename {1 :filename
                  :newfile_status true
                  :path 1
                  :fmt (fn [p]
                         (if (= "[" (p:sub 1 1))
                            p
                            (let [segments (vim.split p "/")
                                  filename (nfnl-core.last segments)
                                  segments-to-shorten (nfnl-core.butlast segments)]
                              (if (= 1 (nfnl-core.count segments))
                                (table.concat segments)
                                (-> segments-to-shorten
                                    (->> (nfnl-core.map (fn [segment] (segment:sub 1 1))))
                                    (table.concat "/")
                                    (nfnl-core.str "/" filename))))))}
        lazy {1 lazy-status.updates
              :cond lazy-status.has_updates}

        tabs {1 :tabs
              :mode 1
              :cond #(> (vim.fn.tabpagenr "$") 1)
              :fmt (fn [_name context]
                     (rhizome.label_for_tabnr (. context :tabnr)))}]

    (lualine.setup {:options {:theme :rose-pine}
                    :extensions [:lazy :man :nvim-dap-ui :quickfix :trouble]
                    :globalstatus true
                    ; :tabline {:lualine_z [tabs]}
                    :sections {:lualine_c [filename]
                               :lualine_x [lazy]
                               :lualine_y [:encoding :fileformat :filetype]
                               :lualine_z [:progress :location tabs]}})
    (vim.cmd "set showtabline=0")))

{: setup}
