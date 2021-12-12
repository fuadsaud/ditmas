config_files = {
  'options',
  'plug-helpers',
  'plug',
  'ag',
  'jsx',
  'auto-mk-dir',
  'colors',
  'conjure',
  'contabs',
  'cmp',
  'autopairs',
  'fts',
  'lsp',
  'mappings',
  'telescope',
  'treesitter',
  'splitjoin',
  'sexp',
  'airline',
  'sneak'
}

for _, config_file in ipairs(config_files) do
  vim.cmd('source ./' .. config_file .. '.vim')
end
