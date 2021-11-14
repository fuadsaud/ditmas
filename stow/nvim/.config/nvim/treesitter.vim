lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
  indent = { enable = true },
  highlight = {
    enable = true,              -- false will disable the whole extension
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
  rainbow = {
      enable = true,
      -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
      extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
      max_file_lines = nil, -- Do not enable for files with more than n lines, int
      -- colors = {
      --   '#C77366',
      --   '#CB2656',
      --   '#A1617A',
      --   '#60A195',
      --   '#B55242',
      --   '#9E7156',
      --   '#7F4C60',
      -- }, -- table of hex strings
      -- termcolors = {
      --   'blue',
      --   'red',
      --   'green',
      --   'cyan',
      --   'blue',
      --   'magenta',
      --   'green',
      -- } -- table of colour name strings
    }
  }
EOF
