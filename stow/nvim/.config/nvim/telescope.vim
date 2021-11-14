" Find files using Telescope command-line sugar.
nnoremap <Leader>ff <cmd>Telescope find_files           theme=dropdown<CR>
nnoremap <Leader>fg <cmd>Telescope live_grep            theme=dropdown<CR>
nnoremap <Leader>fb <cmd>Telescope buffers              theme=dropdown<CR>
nnoremap <Leader>fh <cmd>Telescope help_tags            theme=dropdown<CR>
nnoremap <Leader>fs <cmd>Telescope lsp_document_symbols theme=dropdown<CR>

lua << EOF
require('telescope').load_extension('fzf')

local actions = require('telescope.actions')
require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close
      },
    },
  }
}
EOF
