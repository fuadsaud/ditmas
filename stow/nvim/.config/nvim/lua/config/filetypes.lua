-- [nfnl] Compiled from fnl/config/filetypes.fnl by https://github.com/Olical/nfnl, do not edit.
local filetypes
local function _1_()
  vim.g.html_indent_script1 = "inc"
  vim.g.html_indent_style1 = "inc"
  return nil
end
local function _2_()
  vim.g.clojure_fold = 1
  vim.g.clojure_align_multiline_strings = 1
  local babashka_filetype_group = vim.api.nvim_create_augroup("babashka-filetype", {clear = true})
  return vim.api.nvim_create_autocmd({"BufEnter", "BufNew"}, {pattern = "*.bb", command = ":setfiletype clojure", group = babashka_filetype_group})
end
filetypes = {html = _1_, conjure = _2_}
local function init()
  for _, filetype_fn in pairs(filetypes) do
    filetype_fn()
  end
  return nil
end
return {init = init}
