-- [nfnl] fnl/config/commands.fnl
local function init()
  return vim.api.nvim_create_user_command("CopyRelativePath", "let @+ = expand(\"%\")", {})
end
return {init = init}
