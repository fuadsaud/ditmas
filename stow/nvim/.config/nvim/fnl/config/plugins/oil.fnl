(local {: autoload} (require :nfnl.module))
(local nfnl-core (autoload :nfnl.core))
(local oil (autoload :oil))

(fn setup []
  (oil.setup {:keymaps {:<C-p> false}
                     :<C-x> :actions.preview

                     :<C-s> false
                     :<C-v> :actions.select_vsplit})

  (vim.api.nvim_create_user_command "Browse"
                                    (fn [opts]
                                      (vim.fn.system [:open (nfnl-core.first opts.fargs)]))
                                    {:nargs 1}))

{: setup}
