let g:ale_fixers = { 'javascript': ['prettier_standard'] }
let g:ale_linters = { 'javascript': ['standard'], 'clojure': ['joker'] }
let g:ale_lint_on_text_changed = 'always'
let g:ale_lint_on_save = 1
let g:ale_lint_on_enter = 1
let g:airline#extensions#ale#enabled = 1
let g:javascript_standard_options = '--parser babel-eslint --plugin flowtype'
