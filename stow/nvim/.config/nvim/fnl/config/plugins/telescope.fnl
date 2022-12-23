(module config.plugins.telescope
  {autoload {telescope telescope
             actions telescope.actions}})

(defn config []
  (telescope.load_extension "fzf")
  (telescope.load_extension "ui-select")
  (telescope.load_extension "file_browser")

  (telescope.setup
    {:defaults {:mappings {:i {"<esc>" actions.close}}}}))
