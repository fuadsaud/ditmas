(module config.plugins.noice
  {autoload {noice noice}})

(defn setup []
  (noice.setup
    {:lsp {:override {:vim.lsp.util.convert_input_to_markdown_lines true
                      :vim.lsp.util.stylize_markdown true
                      :cmp.entry.get_documentation true}}

     :presets {:bottom_search true
               :command_palette true
               :inc_rename true
               :long_message_to_split true
               :lsp_doc_border true}}))
