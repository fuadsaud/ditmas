(module config.plugins.telescope
  {autoload {telescope telescope}})

(defn config []
  (telescope.load_extension "fzf")
  (telescope.load_extension "ui-select")
  (telescope.load_extension "file_browser")
  (telescope.load_extension "project")
  (telescope.load_extension "rhizome")

  (telescope.setup {}))
