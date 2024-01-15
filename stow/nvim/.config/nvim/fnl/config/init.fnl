(vim.loader.enable)

(set vim.g.mapleader " ")
(set vim.g.maplocalleaer "+")

(local modules
  [:config.options
   :config.plugins
   :config.colors
   :config.diagnostic
   :config.filetypes
   :config.netrw
   :config.mappings])

(each [_ module-name (ipairs modules)]
  (: (require module-name) :init))
