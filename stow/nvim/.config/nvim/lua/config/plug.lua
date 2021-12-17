local function source(filename)
  vim.cmd('source ' .. os.getenv('XDG_CONFIG_HOME') .. '/nvim/' .. filename)
end

source('plug-helpers.vim')
source('plug.vim')
