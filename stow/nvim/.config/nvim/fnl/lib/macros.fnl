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
         l (length arg)
         cmd (. arg l)]
      (when (not= (type cmd) :string)
         (tset arg l (fn->viml (. arg l))))
      `(let [nvim# (require :aniseed.nvim)]
          (nvim#.ex.autocmd ,(unpack arg)))))

{:augroup augroup
 :autocmd autocmd
 :fn->viml fn->viml}
