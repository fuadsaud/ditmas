-- [nfnl] Compiled from fnl/config/plugins/noice.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local noice = autoload("noice")
local function setup()
  return noice.setup({lsp = {override = {["vim.lsp.util.convert_input_to_markdown_lines"] = true, ["vim.lsp.util.stylize_markdown"] = true, ["cmp.entry.get_documentation"] = true}}, presets = {bottom_search = true, command_palette = true, inc_rename = true, long_message_to_split = true, lsp_doc_border = true}, routes = {{filter = {find = "Debug Failure."}, opts = {skip = true}}}})
end
return {setup = setup}
