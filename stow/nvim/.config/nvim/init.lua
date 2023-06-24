local execute = vim.api.nvim_command
local fn = vim.fn
local fmt = string.format

local module = {}

local pack_path = fn.stdpath("data") .. "/site/pack"

local function ensure (user, repo)
  -- Ensures a given github.com/USER/REPO is cloned in the pack/packer/start directory.
  local install_path = fmt("%s/packer/start/%s", pack_path, repo, repo)

  if fn.empty(fn.glob(install_path)) > 0 then
    execute(fmt("!git clone https://github.com/%s/%s %s", user, repo, install_path))
    execute(fmt("packadd %s", repo))
  end
end

function module.run()
  -- Bootstrap essential plugins required for installing and loading the rest.
  ensure("wbthomason", "packer.nvim")
  ensure("Olical", "aniseed")
end

return module

vim.g["aniseed#env"] = {
  module = "config.init",
  compile = true
}


