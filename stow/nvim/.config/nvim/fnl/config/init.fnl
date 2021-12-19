(module config.init)

(let [plugins (require :config.plugins)]
  (plugins.init))
