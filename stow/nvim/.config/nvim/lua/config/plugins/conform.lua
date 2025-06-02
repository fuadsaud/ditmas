-- [nfnl] fnl/config/plugins/conform.fnl
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local conform = autoload("conform")
local js_formatters = {"prettier", lsp_format = "last"}
local function setup()
  conform.setup({formatters_by_ft = {javascript = js_formatters, typescript = js_formatters, javascriptreact = js_formatters, typescriptreact = js_formatters}, default_format_opts = {lsp_format = "fallback"}, log_level = vim.log.levels.INFO, format_on_save = {timeout_ms = 3000}})
  local function _2_(args)
    local range = nil
    if (args.count ~= ( - 1)) then
      local end_line = vim.api.nvim_buf_get_lines(0, (args.line2 - 1), args.line2, true)[1]
      range = {["end"] = {args.line2, end_line:len()}, start = {args.line1, 0}}
    else
    end
    return require("conform").format({async = true, lsp_format = "fallback", range = range})
  end
  vim.api.nvim_create_user_command("ConformBuffer", _2_, {range = true})
  local function _4_(args)
    if args.bang then
      vim.b.disable_autoformat = true
      return nil
    else
      vim.g.disable_autoformat = true
      return nil
    end
  end
  vim.api.nvim_create_user_command("ConformOnSaveDisable", _4_, {bang = true, desc = "Disable autoformat-on-save"})
  local function _6_()
    vim.b.disable_autoformat = false
    vim.g.disable_autoformat = false
    return nil
  end
  return vim.api.nvim_create_user_command("ConformOnSaveEnable", _6_, {desc = "Re-enable autoformat-on-save"})
end
return {setup = setup}
