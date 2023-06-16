(module config.lsp.clojure
  {autoload {nvim aniseed.nvim
             a aniseed.core
             lspconfig lspconfig
             util lspconfig.util}})

(defn expand_path_uri []
  (a.str "file://" (vim.fn.expand "%:p")))

(defn- on_attach [client bufnr]
  (let [buf-set-keymap (fn [mode mapping target] (nvim.buf_set_keymap bufnr mode mapping target {:noremap true}))
        buf-set-keymap-fn (fn [mode mapping target-fn]
                            (vim.keymap.set mode mapping target-fn {:buffer bufrn
                                                                    :noremap true}))]
    (print "Running config.lsp.clojure/on_attach")

    (let [execute-command (fn [command-name extra-args]
                            (vim.lsp.buf.execute_command
                              {:command command-name
                               :arguments (a.concat [(expand_path_uri)
                                                     (- (vim.fn.line ".") 1)
                                                     (- (vim.fn.col ".") 1)]
                                                    extra-args)}))]

      (buf_set_keymap-fn :n :<LocalLeader>cc #(execute-command :cycle-coll          []))
      (buf_set_keymap-fn :n :<LocalLeader>cp #(execute-command :cycle-privacy       []))
      (buf_set_keymap-fn :n :<LocalLeader>th #(execute-command :thread-first        []))
      (buf_set_keymap-fn :n :<LocalLeader>tt #(execute-command :thread-last         []))
      (buf_set_keymap-fn :n :<LocalLeader>tf #(execute-command :thread-first-all    []))
      (buf_set_keymap-fn :n :<LocalLeader>tl #(execute-command :thread-last-all     []))
      (buf_set_keymap-fn :n :<LocalLeader>am #(execute-command :add-missing-libspec []))
      (buf_set_keymap-fn :n :<LocalLeader>el #(execute-command :expand-let          []))
      (buf_set_keymap-fn :n :<LocalLeader>ml #(execute-command :move-to-let         [(vim.fn.input "Binding name: ")]))
      (buf_set_keymap-fn :n :<LocalLeader>il #(execute-command :introduce-let       [(vim.fn.input "Binding name: ")])))))

(defn opts [default-server-opts]
  (a.merge default-server-opts {:on_attach (fn [client bufnr]
                                             (on_attach client bufnr)
                                             (default-server-opts.on_attach client bufnr))}))
