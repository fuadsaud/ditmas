nunmap <C-j>n
nnoremap <Leader>jn <Cmd>JazzNrepl<CR>

augroup Jazz
  autocmd!
  au FileType clojure nmap <buffer> <Leader>ju <Cmd>JazzFindUsages<Cr>
  au FileType clojure nmap <buffer> <Leader>js <Cmd>JazzNavigateSymbols<Cr>
  au FileType clojure nmap <buffer> <Leader>ja <Cmd>lua require("jazz.files").alternate()<Cr>
  au FileType clojure nmap <buffer> <Leader>jf <Cmd>lua require("jazz.files").new()<Cr>
augroup END
