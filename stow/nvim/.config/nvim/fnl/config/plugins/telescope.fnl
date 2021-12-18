(module config.plugins.telescope
  {autoload {telescope telescope
             actions telescope.actions}})

(telescope.load_extension "fzf")

(telescope.setup
  {:defaults {:mappings {:i {"<esc>" actions.close}}}})
