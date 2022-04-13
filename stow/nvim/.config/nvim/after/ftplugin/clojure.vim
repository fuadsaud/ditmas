let g:clojure_fold = 1
let g:clojure_align_multiline_strings = 1

augroup clojure_lispwords
  autocmd!
  autocmd FileType clojure setlocal lispwords+=async,describe,it
augroup END
