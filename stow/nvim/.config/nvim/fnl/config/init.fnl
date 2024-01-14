(vim.loader.enable)

(local modules
  [:config.plugins
   :config.colors
   :config.diagnostic
   :config.filetypes
   :config.netrw])

(each [_ module-name (ipairs modules)]
  (: (require module-name) :init))
