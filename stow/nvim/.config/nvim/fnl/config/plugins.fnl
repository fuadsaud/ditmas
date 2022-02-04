(module config.plugins
  {autoload {packer packer
             spec config.plugins.spec
             a aniseed.core
             nvim aniseed.nvim
             constants config.constants}
   require-macros [config.macros]})

(defn- log [x]
  (a.println x))

(defn- pair-to-plugin [[name opts]]
  (a.assoc opts 1 name))

(defn- adapt-requires [opts]
  (if opts.requires
    (a.update opts :requires (partial a.map-indexed pair-to-plugin))
    opts))

(defn- adapt-plugin [[name opts]]
  (pair-to-plugin [name (adapt-requires opts)]))

(defn- adapt-plugins [plugins]
  (a.map-indexed adapt-plugin plugins))

(defn- use-all [plugins]
  (each [_ plugin (ipairs (adapt-plugins plugins))]
    (packer.use plugin)))

(defn init []
  (packer.init {:max_jobs 50})

  (use-all spec.plugins))

(comment
  (init))
