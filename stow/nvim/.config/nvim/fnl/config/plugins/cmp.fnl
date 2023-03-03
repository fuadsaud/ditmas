(module config.plugins.cmp
  {autoload {cmp cmp
             luasnip luasnip}})

(def- cmp-src-menu-items
  {:buffer "buff"
   :luasnip "luasnip"
   :conjure "conj"
   :nvim_lsp "lsp"
   :nvim_lsp_signature_help "signature"})

(defn config []
  (cmp.setup {:formatting
              {:format (fn [entry item]
                        (set item.menu (or (. cmp-src-menu-items entry.source.name) ""))
                        item)}

              :snippet {:expand (fn [args] (luasnip.lsp_expand args.body))}

              :mapping {:<C-p> (cmp.mapping.select_prev_item)
                        :<C-n> (cmp.mapping.select_next_item)
                        :<C-d> (cmp.mapping.scroll_docs (- 4))
                        :<C-f> (cmp.mapping.scroll_docs 4)
                        :<C-Space> (cmp.mapping.complete)
                        :<C-e> (cmp.mapping {:i (cmp.mapping.abort)
                                             :c (cmp.mapping.close)})
                        :<CR> (cmp.mapping.confirm {:select false})}

              :sources (cmp.config.sources [{:name :nvim_lsp}
                                            {:name :nvim_lsp_signature_help}
                                            {:name :luasnip}
                                            {:name :conjure}
                                            {:name :buffer}])})

  (cmp.setup.cmdline "/" {:sources [{:name :buffer}]})
  (cmp.setup.cmdline ":" {:sources (cmp.config.sources [{:name :path
                                                         :option {:trailing_slash true}}]
                                                       [{:name :cmdline}])}))
