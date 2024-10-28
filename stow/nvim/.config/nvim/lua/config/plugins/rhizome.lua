-- [nfnl] Compiled from fnl/config/plugins/rhizome.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local rhizome = autoload("rhizome")
local function setup()
  return rhizome.setup({roots = {{path = "~/Sources/fuadsaud/Monrovia"}, {path = "~/Sources/fuadsaud/fuadsaud.github.io"}, {path = "~/.ditmas"}, {path = "~/Sources/fuadsaud/rhizome.nvim"}, {path = "~/.config/zsh", entrypoint = ".zshrc"}}})
end
return {setup = setup}
