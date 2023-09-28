(module config.plugins.cmp
  {autoload {a aniseed.core
             cmp cmp
             luasnip luasnip}})

(def- cmp-src-menu-items
  {:buffer "buff"
   :luasnip "luasnip"
   :conjure "conj"
   :nvim_lsp "lsp"
   :nvim_lsp_signature_help "signature"})

(defn delay [f t]
  (let [timer (vim.loop.new_timer)]
    (timer:start t 0 (vim.schedule_wrap (fn []
                                          (f)
                                          (timer:stop))))))

(defn setup []
  (cmp.setup
    {:preselect cmp.PreselectMode.None

     :formatting
     {:format (fn [entry item]
               (set item.menu (or (. cmp-src-menu-items entry.source.name) ""))
               item)}

     :window {:completion (cmp.config.window.bordered)
              :documentation (cmp.config.window.bordered)}

     :snippet {:expand (fn [args] (luasnip.lsp_expand args.body))}

     :mapping (cmp.mapping.preset.insert
               {:<C-p> (cmp.mapping.select_prev_item)
                :<C-n> (cmp.mapping.select_next_item)
                :<C-b> (cmp.mapping.scroll_docs (- 4))
                :<C-f> (cmp.mapping.scroll_docs 4)
                :<C-Space> (cmp.mapping.complete)
                :<C-e> (cmp.mapping {:i (cmp.mapping.abort)
                                     :c (cmp.mapping.close)})
                :<CR> (cmp.mapping.confirm {:select false})})

     :sources (cmp.config.sources
                [{:name :nvim_lsp}
                 {:name :nvim_lsp_signature_help}
                 {:name :luasnip}
                 {:name :conjure}
                 {:name :buffer}])}))

  ; (cmp.setup.cmdline ["/" "?"]
  ;                    {:mapping (cmp.mapping.preset.cmdline)
  ;                     :sources [{:name :buffer}]})

  ; (let [cmdline-mapping (cmp.mapping.preset.cmdline)
  ;       tab-mapping (fn [direction]
  ;                     (let [direction-fn (if (= :forward direction) cmp.select_next_item cmp.select_prev_item)]
  ;                       (if (and (= :c (. (vim.api.nvim_get_mode) :mode))
  ;                                (= nil (cmp.get_selected_entry)))
  ;                           (let [text (vim.fn.getcmdline)
  ;                                 expanded (vim.fn.expandcmd text)]
  ;                             (if (not= expanded text)
  ;                               (do
  ;                                (vim.api.nvim_feedkeys (.. (vim.api.nvim_replace_termcodes :<C-U> true true true)
  ;                                                           expanded)
  ;                                                       :n
  ;                                                       false)
  ;                                (delay cmp.complete 0))

  ;                               (cmp.visible)
  ;                               (direction-fn)

  ;                               (cmp.complete))
  ;                            (if (cmp.visible)
  ;                              (direction-fn)
  ;                              (cmp.complete))))))

  ;       cmdline-mapping-override {:<Tab> {:c #(tab-mapping :forward)}
  ;                                 :<S-Tab> {:c #(tab-mapping :backward)}}

  ;       custom-mapping (a.merge cmdline-mapping cmdline-mapping-override)]

  ;   (cmp.setup.cmdline ":"
  ;                      {:mapping custom-mapping
  ;                       :sources (cmp.config.sources [{:name :path
  ;                                                      :option {:trailing_slash true}}]
  ;                                                    [{:name :cmdline}])})))
