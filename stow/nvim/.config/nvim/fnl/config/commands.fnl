(fn init []
  (vim.api.nvim_create_user_command "CopyRelativePath" "let @+ = expand(\"%\")" {}))

{: init}
