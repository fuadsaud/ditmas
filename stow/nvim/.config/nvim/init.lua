-- local pack_path = vim.fn.stdpath("data") .. "/site/pack"

-- local function ensure(user, repo)
--   -- Ensures a given github.com/USER/REPO is cloned in the pack/packer/start directory.
--   local install_path = string.format("%s/packer/start/%s", pack_path, repo, repo)

--   if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
--     vim.api.nvim_command(string.format("!git clone https://github.com/%s/%s %s", user, repo, install_path))
--     vim.api.nvim_command(string.format("packadd %s", repo))
--   end
-- end

-- -- Bootstrap essential plugins required for installing and loading the rest.
-- -- ensure("wbthomason", "packer.nvim")
-- -- ensure("Olical", "aniseed")

local function tbl_remove_nil(tbl)
  return vim.tbl_filter(
    function(_, v) return v == nil end,
    tbl
  )
end

local plugins_path = vim.fn.stdpath("data") .. "/lazy"

local function bootstrap(user, repo, opts)
  local install_path = plugins_path .. "/" .. repo

  if not vim.loop.fs_stat(install_path) then
    vim.notify(string.format("Boostrapping %s/%s at %s", user, repo, install_path))
    local cmd = {
      "git",
      "clone",
      "--filter=blob:none",
      string.format("https://github.com/%s/%s.git", user, repo),
      (opts.ref and string.format("--branch=%s", opts.ref) or nil),
      install_path
    }

    vim.fn.system(tbl_remove_nil(cmd))
  end

  vim.opt.rtp:prepend(install_path)
end

bootstrap("folke", "lazy.nvim", { ref = "stable" })
bootstrap("Olical", "aniseed", {})

vim.g["aniseed#env"] = {
  module = "config.init",
  compile = true
}
