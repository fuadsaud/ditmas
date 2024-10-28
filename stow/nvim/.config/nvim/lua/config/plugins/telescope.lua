-- [nfnl] Compiled from fnl/config/plugins/telescope.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local telescope = autoload("telescope")
local function setup()
  telescope.load_extension("fzf")
  telescope.load_extension("file_browser")
  telescope.load_extension("project")
  telescope.load_extension("rhizome")
  return telescope.setup({})
end
return {setup = setup}
