-- [nfnl] Compiled from fnl/config/diagnostic.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local highlight = autoload("lib.highlight")
local signs = {Error = "!", Warn = "*", Info = "~", Hint = "?"}
for s, t in pairs(signs) do
  local name = ("DiagnosticSign" .. s)
  vim.fn.sign_define(name, {text = (" " .. t), texthl = name, numhl = name})
end
local function update_highlights()
  highlight["make-italic"]("DiagnosticError")
  highlight["make-italic"]("DiagnosticWarn")
  highlight["make-italic"]("DiagnosticInfo")
  return highlight["make-italic"]("DiagnosticHint")
end
local config_diagnostic_group = vim.api.nvim_create_augroup("config-diagnostic", {clear = true})
vim.api.nvim_create_autocmd("ColorScheme", {pattern = "*", callback = update_highlights, group = config_diagnostic_group})
local function init()
  update_highlights()
  return vim.diagnostic.config({update_in_insert = true, virtual_text = {prefix = "\226\128\162"}, severity_sort = true})
end
return {init = init}
