(fn augroup [name ...]
  `(let [nvim# (require :aniseed.nvim)]
     (nvim#.ex.augroup ,name)
     (nvim#.ex.autocmd_)
     (do ,...)
     (nvim#.ex.augroup :END)))

(fn fn->viml [f]
  `(.. "lua require('" *module-name* "')['" ,(tostring f) "']()"))

(fn autocmd [...]
  (let [arg [...]
        l (length arg)]
    (tset arg l (fn->viml (. arg l)))
    `(let [nvim# (require :aniseed.nvim)]
       (nvim#.ex.autocmd ,(unpack arg)))))

(fn with-restore-view [...]
  `(let [view# (vim.fn.winsaveview)]
     (do ,...)
     (vim.fn.winrestview view#)))

(fn set-operatorfunc [f]
  `(let [nvim# (require :aniseed.nvim)]
     (tset _G
           :_lib_macros_operatorfunc
           (fn []
             (tset _G :_lib_macros_operatorfunc nil)))
     (nvim#.set_option :operatorfunc "v:lua._lib_macros_operatorfunc")))

{:augroup augroup
 :autocmd autocmd
 :fn->viml fn->viml
 :with-restore-view with-restore-view
 :set-operatorfunc set-operatorfunc}
