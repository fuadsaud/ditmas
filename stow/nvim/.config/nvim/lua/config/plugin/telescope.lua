local telescope = require('telescope')
local actions   = require('telescope.actions')

telescope.load_extension('fzf')

telescope.setup{
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close
      },
    },
  },
}
