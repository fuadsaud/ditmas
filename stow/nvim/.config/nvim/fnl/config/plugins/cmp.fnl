(module config.plugins.cmp
  {autoload {cmp cmp}})

(def- cmp-src-menu-items
  {:buffer "buff"
   :vsnip "vsnip"
   :conjure "conj"
   :nvim_lsp "lsp"})

(cmp.setup {:formatting
            {:format (fn [entry item]
                       (set item.menu (or (. cmp-src-menu-items entry.source.name) ""))
                       item)}

            :snippet {:expand (fn [args] ((. vim.fn "vsnip#anonymous") args.body))}

            :mapping {"<C-d>" (cmp.mapping (cmp.mapping.scroll_docs (- 4)) [:i :c])
                      "<C-f>" (cmp.mapping (cmp.mapping.scroll_docs 4) [:i :c])
                      "<C-Space>" (cmp.mapping (cmp.mapping.complete) [:i :c])
                      "<C-y>" cmp.config.disable
                      "<C-e>" (cmp.mapping {:i (cmp.mapping.abort)
                                            :c (cmp.mapping.close)})
                      "<CR>" (cmp.mapping.confirm {:select true})}

            :sources (cmp.config.sources [{:name :nvim_lsp}
                                          {:name :vsnip}
                                          {:name :conjure}]
                                         [{:name :buffer}])})

(cmp.setup.cmdline "/" {:sources [{:name :buffer}]})
(cmp.setup.cmdline ":" {:sources (cmp.config.sources [{:name :path}]
                                                     [{:name :cmdline}])})
