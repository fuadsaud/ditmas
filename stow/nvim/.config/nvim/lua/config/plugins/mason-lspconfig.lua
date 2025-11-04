-- [nfnl] fnl/config/plugins/mason-lspconfig.fnl
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local mason_lspconfig = autoload("mason-lspconfig")
local function setup()
  return mason_lspconfig.setup({ensure_installed = {"clojure_lsp", "html", "cssls", "jsonls", "yamlls", "emmet_language_server", "cssmodules_ls", "stylelint_lsp", "eslint", "lua_ls", "fennel_language_server", "bashls", "taplo"}, automatic_enable = false})
end
return {setup = setup}
