-- [nfnl] Compiled from fnl/init.fnl by https://github.com/Olical/nfnl, do not edit.
local function remove_nils(tbl)
  local function _1_(_241)
    return (_241 == nil)
  end
  return vim.tbl_filter(_1_, tbl)
end
local plugins_path = (vim.fn.stdpath("data") .. "/lazy")
local function bootstrap(user, repo, opts)
  local install_path = (plugins_path .. "/" .. repo)
  if not vim.loop.fs_stat(install_path) then
    vim.notify(string.format("Bootstrapping %s/%s at %s", user, repo, install_path))
    local cmd
    local _2_
    if opts.ref then
      _2_ = string.format("--branch=%s", opts.ref)
    else
      _2_ = nil
    end
    cmd = {"git", "clone", "--filter=blob:none", "--single-branch", string.format("https://github.com/%s/%s.git", user, repo), _2_, install_path}
    return vim.fn.system(remove_nils(cmd))
  else
    return nil
  end
end
return bootstrap("folke", "lazy.nvim", {ref = "stable"})
