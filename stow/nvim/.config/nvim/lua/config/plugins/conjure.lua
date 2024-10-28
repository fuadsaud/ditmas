-- [nfnl] Compiled from fnl/config/plugins/conjure.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local baleia = autoload("baleia")
local function setup()
  vim.g["conjure#client#scheme#stdio#command"] = "csi -quiet -:c"
  vim.g["conjure#client#scheme#stdio#prompt_pattern"] = "\n-#;%d-> "
  vim.g["conjure#client#clojure#nrepl#test#runner"] = "kaocha"
  vim.g["conjure#client#clojure#nrepl#test#call_suffix"] = "{:kaocha/color? true}"
  vim.g["conjure#mapping#doc_word"] = "<LocalLeader>K"
  vim.g["conjure#mapping#def_word"] = "<LocalLeader>gd"
  vim.g["conjure#relative_file_root"] = vim.fn.getcwd()
  vim.g["conjure#client#clojure#nrepl#refresh#before"] = "user/stop"
  vim.g["conjure#client#clojure#nrepl#refresh#after"] = "user/start"
  vim.g["conjure#log#wrap"] = true
  vim.g["conjure#log#strip_ansi_escape_sequences_line_limit"] = 0
  local _local_2_ = baleia.setup({line_starts_at = 3})
  local automatically = _local_2_["automatically"]
  local function _3_()
    return automatically(vim.fn.bufnr("%"))
  end
  vim.api.nvim_create_autocmd("BufWinEnter", {pattern = "conjure-log-*", callback = _3_})
  local function _4_()
    return vim.diagnostic.disable(0)
  end
  return vim.api.nvim_create_autocmd("BufNewFile", {pattern = "conjure-log-*", callback = _4_})
end
return {setup = setup}
