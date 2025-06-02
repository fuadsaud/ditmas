-- [nfnl] init.fnl
local function tbl_remove_nil(tbl)
  local function _1_(_, v)
    return (v == nil)
  end
  return vim.tbl_filter(_1_, tbl)
end
local plugins_path = (vim.fn.stdpath("data") .. "/lazy")
local function bootstrap(user, repo, opts)
  local install_path = (plugins_path .. "/" .. repo)
  if not vim.loop.fs_stat(install_path) then
    vim.notify(string.format("Boostrapping %s/%s at %s", user, repo, install_path))
    local cmd = {"git", "clone", "--filter=blob:none", "--single-branch", string.format("https://github.com/%s/%s.git", user, repo), ((opts.ref and string.format("--branch=%s", opts.ref)) or nil), install_path}
    vim.fn.system(tbl_remove_nil(cmd))
  else
  end
  return vim.opt.rtp:prepend(install_path)
end
bootstrap("folke", "lazy.nvim", {ref = "stable"})
bootstrap("Olical", "nfnl", {})
return require("config.init")
