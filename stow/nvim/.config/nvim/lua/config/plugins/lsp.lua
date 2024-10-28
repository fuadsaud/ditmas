-- [nfnl] Compiled from fnl/config/plugins/lsp.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local nfnl_core = autoload("nfnl.core")
local cmp_lsp = autoload("cmp_nvim_lsp")
local lspconfig = autoload("lspconfig")
local lsp_format = autoload("lsp-format")
local mason = autoload("mason")
local mason_lspconfig = autoload("mason-lspconfig")
local neodev = autoload("neodev")
local null_ls = autoload("null-ls")
local telescope_builtin = autoload("telescope.builtin")
local telescope_themes = autoload("telescope.themes")
local typescript = autoload("typescript")
local typescript_null_ls_code_actions = autoload("typescript.extensions.null-ls.code-actions")
local typescript_tools = autoload("typescript-tools")
local verbose_3f = false
local function log(message)
  if verbose_3f then
    return vim.notify(message)
  else
    return nil
  end
end
local default_server_opts
local function _3_(client, bufnr)
  log(nfnl_core.str("Running config.lsp.shared/on_attach", {client = client.name}))
  vim.lsp.inlay_hint.enable(true)
  if (client.name == "eslint") then
    client["server_capabilities"]["documentFormattingProvider"] = true
  else
  end
  local buf_set_option
  local function _5_(opt, val)
    return vim.api.nvim_buf_set_option(bufnr, opt, val)
  end
  buf_set_option = _5_
  local buf_set_keymap_fn
  local function _6_(mode, mapping, target_fn)
    return vim.keymap.set(mode, mapping, target_fn, {buffer = bufnr, noremap = true})
  end
  buf_set_keymap_fn = _6_
  buf_set_option("omnifunc", "v:lunfnl-core.vim.lsp.omnifunc")
  local function _7_()
    return vim.lsp.buf.hover()
  end
  buf_set_keymap_fn("n", "K", _7_)
  local function _8_()
    return vim.lsp.buf.signature_help()
  end
  buf_set_keymap_fn("n", "<Leader>k", _8_)
  local function _9_()
    return vim.lsp.buf.signature_help()
  end
  buf_set_keymap_fn("i", "<C-Z>", _9_)
  local function _10_()
    return vim.lsp.buf.incoming_calls()
  end
  buf_set_keymap_fn("n", "<Leader>lic", _10_)
  local function _11_()
    return vim.lsp.buf.outgoing_calls()
  end
  buf_set_keymap_fn("n", "<Leader>loc", _11_)
  local function _12_()
    return vim.lsp.buf.references()
  end
  buf_set_keymap_fn("n", "gr", _12_)
  local function _13_()
    return vim.cmd({cmd = "TroubleToggle", args = "lsp_references"})
  end
  buf_set_keymap_fn("n", "gR", _13_)
  local function _14_()
    return vim.lsp.buf.definition()
  end
  buf_set_keymap_fn("n", "gd", _14_)
  local function _15_()
    return vim.lsp.buf.document_symbol()
  end
  buf_set_keymap_fn("n", "g0", _15_)
  local function _16_()
    return vim.lsp.buf.declaration()
  end
  buf_set_keymap_fn("n", "gD", _16_)
  local function _17_()
    return vim.lsp.buf.type_definition()
  end
  buf_set_keymap_fn("n", "gy", _17_)
  local function _18_()
    return vim.lsp.buf.workspace_symbol()
  end
  buf_set_keymap_fn("n", "gW", _18_)
  local function _19_()
    return vim.lsp.buf.implementation()
  end
  buf_set_keymap_fn("n", "gi", _19_)
  local function _20_()
    return vim.lsp.buf.code_action()
  end
  buf_set_keymap_fn("n", "<Leader>lk", _20_)
  local function _21_()
    return vim.lsp.buf.format()
  end
  buf_set_keymap_fn("n", "<Leader>lf", _21_)
  local function _22_()
    return vim.lsp.buf.rename()
  end
  buf_set_keymap_fn("n", "<Leader>lr", _22_)
  local function _23_()
    return vim.lsp.buf.add_workspace_folder()
  end
  buf_set_keymap_fn("n", "<Leader>lwa", _23_)
  local function _24_()
    return vim.inspect(vim.lsp.buf.list_workspace_folders())
  end
  buf_set_keymap_fn("n", "<Leader>lwl", _24_)
  local function _25_()
    return vim.lsp.buf.remove_workspace_folder()
  end
  buf_set_keymap_fn("n", "<Leader>lwr", _25_)
  local function _26_()
    return vim.lsp.inlay_hint.enable(true)
  end
  buf_set_keymap_fn("n", "<Leader>lihe", _26_)
  local function _27_()
    return vim.lsp.inlay_hint.enable(false)
  end
  buf_set_keymap_fn("n", "<Leader>lihd", _27_)
  local telescope_theme = telescope_themes.get_ivy()
  local function _28_()
    return telescope_builtin.lsp_workspace_symbols(telescope_theme)
  end
  buf_set_keymap_fn("n", "<Leader>fws", _28_)
  local function _29_()
    return telescope_builtin.lsp_document_symbols(telescope_theme)
  end
  buf_set_keymap_fn("n", "<Leader>fds", _29_)
  local function _30_()
    return telescope_builtin.lsp_references(telescope_theme)
  end
  buf_set_keymap_fn("n", "<Leader>fr", _30_)
  local function _31_()
    return telescope_builtin.lsp_implementations(telescope_theme)
  end
  buf_set_keymap_fn("n", "<Leader>fi", _31_)
  local function _32_()
    return telescope_builtin.lsp_incoming_calls(telescope_theme)
  end
  buf_set_keymap_fn("n", "<Leader>flic", _32_)
  local function _33_()
    return telescope_builtin.lsp_outgoing_calls(telescope_theme)
  end
  return buf_set_keymap_fn("n", "<Leader>floc", _33_)
end
default_server_opts = {on_attach = _3_, handlers = {["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {border = "single"}), ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {border = "single"})}, capabilities = nfnl_core["assoc-in"](nfnl_core.merge({}, cmp_lsp.default_capabilities()), {"textDocument", "completion", "completionItem", "snippetSupport"}, true)}
local server__3econfig
local function _34_(client, bufnr)
  local buf_set_keymap_fn
  local function _35_(mode, mapping, target_fn)
    return vim.keymap.set(mode, mapping, target_fn, {buffer = bufnr, noremap = true})
  end
  buf_set_keymap_fn = _35_
  local expand_path_uri
  local function _36_()
    return nfnl_core.str("file://", vim.fn.expand("%:p"))
  end
  expand_path_uri = _36_
  log("Running config.plugins.lsp.clojure/on_attach")
  local execute_command
  local function _37_(command_name, extra_args)
    return vim.lsp.buf.execute_command({command = command_name, arguments = nfnl_core.concat({expand_path_uri(), (vim.fn.line(".") - 1), (vim.fn.col(".") - 1), extra_args})})
  end
  execute_command = _37_
  local function _38_()
    return execute_command("cycle-coll", {})
  end
  buf_set_keymap_fn("n", "<LocalLeader>cc", _38_)
  local function _39_()
    return execute_command("cycle-privacy", {})
  end
  buf_set_keymap_fn("n", "<LocalLeader>cp", _39_)
  local function _40_()
    return execute_command("thread-first", {})
  end
  buf_set_keymap_fn("n", "<LocalLeader>th", _40_)
  local function _41_()
    return execute_command("thread-last", {})
  end
  buf_set_keymap_fn("n", "<LocalLeader>tt", _41_)
  local function _42_()
    return execute_command("thread-first-all", {})
  end
  buf_set_keymap_fn("n", "<LocalLeader>tf", _42_)
  local function _43_()
    return execute_command("thread-last-all", {})
  end
  buf_set_keymap_fn("n", "<LocalLeader>tl", _43_)
  local function _44_()
    return execute_command("add-missing-libspec", {})
  end
  buf_set_keymap_fn("n", "<LocalLeader>am", _44_)
  local function _45_()
    return execute_command("expand-let", {})
  end
  buf_set_keymap_fn("n", "<LocalLeader>el", _45_)
  local function _46_()
    return execute_command("move-to-let", {vim.fn.input("Binding name: ")})
  end
  buf_set_keymap_fn("n", "<LocalLeader>ml", _46_)
  local function _47_()
    return execute_command("introduce-let", {vim.fn.input("Binding name: ")})
  end
  buf_set_keymap_fn("n", "<LocalLeader>il", _47_)
  return default_server_opts.on_attach(client, bufnr)
end
local function _48_(client, bufnr)
  client.server_capabilities.defintionProvider = false
  return default_server_opts.on_attach(client, bufnr)
end
server__3econfig = {clojure_lsp = nfnl_core.merge(default_server_opts, {on_attach = _34_}), html = default_server_opts, cssls = default_server_opts, jsonls = default_server_opts, yamlls = default_server_opts, emmet_language_server = default_server_opts, cssmodules_ls = nfnl_core.merge(default_server_opts, {on_attach = _48_}), stylelint_lsp = nfnl_core.merge(default_server_opts, {settings = {stylelintplus = {autoFixOnFormat = true}}}), eslint = nfnl_core.merge(default_server_opts, {settings = {rulesCustomizations = {{rule = "prettier/prettier", severity = "off"}}}}), lua_ls = nfnl_core.merge(default_server_opts, {settings = {Lua = {diagnostics = {globals = {"vim"}}}}}), fennel_language_server = nfnl_core.merge(default_server_opts, {settings = {fennel = {workspace = {library = vim.api.nvim_list_runtime_paths()}, diagnostics = {globals = {"vim"}}}}}), bashls = default_server_opts, taplo = default_server_opts}
local function setup_mason()
  mason.setup({})
  return mason_lspconfig.setup({automatic_installation = true})
end
local function setup_null_ls()
  null_ls.setup({sources = {null_ls.builtins.formatting.prettier, null_ls.builtins.code_actions.gitsigns, null_ls.builtins.diagnostics.stylelint, typescript_null_ls_code_actions}, on_attach = default_server_opts.on_attach, debug = true})
  return log(string.format("config.plugins.lspconfig/config: setup finished for [%s]", "null-ls"))
end
local function setup_lspconfig()
  for server_name, config in pairs(server__3econfig) do
    lspconfig[server_name].setup(config)
    log(string.format("config.plugins.lspconfig/config: setup finished for [%s]", server_name))
  end
  return nil
end
local function setup_lsp_format()
  return lsp_format.setup({exclude = {"tsserver", "jsonls", "cssls"}})
end
local function setup_neodev()
  return neodev.setup({})
end
local function setup_tsserver()
  local settings = {inlayHints = {includeInlayEnumMemberValueHints = true, includeInlayFunctionLikeReturnTypeHints = true, includeInlayFunctionParameterTypeHints = true, includeInlayPropertyDeclarationTypeHints = true, includeInlayParameterNameHints = "all", includeInlayParameterNameHintsWhenArgumentMatchesName = true, includeInlayVariableTypeHints = true, includeInlayVariableTypeHintsWhenArgumentMatchesName = true}, implementationsCodeLens = {enabled = true}, referencesCodeLens = {enabled = true, showOnAllFunctions = true}}
  return typescript.setup({server = nfnl_core.merge(default_server_opts, {settings = {javascript = settings, typescript = settings}})})
end
local function setup_typescript_tools()
  return typescript_tools.setup({expose_as_code_action = "all", code_lens = "all"})
end
local function setup()
  log("config.plugins.lspconfig/config")
  setup_mason()
  setup_neodev()
  setup_tsserver()
  setup_typescript_tools()
  setup_null_ls()
  setup_lspconfig()
  return setup_lsp_format()
end
return {setup = setup}
