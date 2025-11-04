(local {: autoload} (require :nfnl.module))
(local conform (autoload :conform))

(local js-formatters {1 :prettier
                      ; 2 :eslint_d

                      :lsp_format :last})

(local css-formatters {1 :stylelint

                       :lsp_format :last})

(fn setup []
  (conform.setup {:formatters_by_ft {:javascript js-formatters
                                     :typescript js-formatters
                                     :javascriptreact js-formatters
                                     :typescriptreact js-formatters

                                     :css css-formatters
                                     :scss css-formatters}

                  :default_format_opts {:lsp_format :fallback}

                  :log_level vim.log.levels.DEBUG
                  :format_on_save {:timeout_ms 3000}

                  :formatters {:prettier {:prepend_args ["--no-semi" "--single-quote"]}}})

  (vim.api.nvim_create_user_command :ConformBuffer
                                    (fn [args]
                                      (var range nil)
                                      (when (not= args.count (- 1))
                                        (local end-line
                                               (. (vim.api.nvim_buf_get_lines 0
                                                                              (- args.line2
                                                                                 1)
                                                                              args.line2
                                                                              true)
                                                  1))
                                        (set range
                                             {:end [args.line2 (end-line:len)]
                                              :start [args.line1 0]}))
                                      ((. (require :conform) :format) {:async true
                                                                       :lsp_format :fallback
                                                                       : range}))
                                    {:range true})

  (vim.api.nvim_create_user_command :ConformOnSaveDisable
                                    (fn [args]
                                      (if args.bang
                                          (set vim.b.disable_autoformat true)
                                          (set vim.g.disable_autoformat true)))
                                    {:bang true
                                     :desc "Disable autoformat-on-save"})

  (vim.api.nvim_create_user_command :ConformOnSaveEnable
                                    (fn [] (set vim.b.disable_autoformat false)
                                      (set vim.g.disable_autoformat false))
                                    {:desc "Re-enable autoformat-on-save"}))


{: setup}
