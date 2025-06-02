(fn tbl-remove-nil [tbl]
  (vim.tbl_filter (fn [_ v] (= v nil)) tbl))

(local plugins-path (.. (vim.fn.stdpath :data) :/lazy))

(fn bootstrap [user repo opts]
  (let [install-path (.. plugins-path "/" repo)]
    (when (not (vim.loop.fs_stat install-path))
      (vim.notify (string.format "Boostrapping %s/%s at %s" user repo
                                 install-path))
      (local cmd [:git
                  :clone
                  "--filter=blob:none"
                  :--single-branch
                  (string.format "https://github.com/%s/%s.git" user repo)
                  (or (and opts.ref (string.format "--branch=%s" opts.ref)) nil)
                  install-path])
      (vim.fn.system (tbl-remove-nil cmd)))
    (vim.opt.rtp:prepend install-path)))

(bootstrap :folke :lazy.nvim {:ref :stable})
(bootstrap :Olical :nfnl {})

(require :config.init)
