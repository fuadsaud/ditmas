local function source(filename)
  vim.cmd('source ' .. os.getenv('XDG_CONFIG_HOME') .. '/nvim/' .. filename)
end

config_files = { 'plug-helpers.vim', 'plug.vim' }

for _, config_file in ipairs(config_files) do
  source(config_file)
end
