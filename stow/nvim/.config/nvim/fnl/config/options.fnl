(local options
  {:shell (os.getenv :SHELL)

   :encoding :utf-8

   :visualbell true
   :showmode false
   :showmatch true
   :title true

   :number true
   :relativenumber false

   :cursorline true
   :colorcolumn [80 100 120]

   :fillchars {:vert "│"}
   :list true
   :listchars {:tab "▶-"
               :trail "•"
               :extends "»"
               :precedes "«"}

   :splitbelow true
   :splitright true

   :clipboard :unnamedplus
   :wildmode [:longest :full]

   :mouse :a

   :swapfile false
   :undofile true

   ;; whitespace
   :autoindent true
   :copyindent true
   :wrap false
   :expandtab true
   :tabstop 2
   :softtabstop 2
   :shiftwidth 2
   :shiftround true

   ;; searching
   :ignorecase true
   :smartcase true
   :gdefault true
   :inccommand :split

   ;; folding
   :foldlevelstart 10
   :foldnestmax 10
   :foldmethod :syntax

   ;; completion
   :completeopt [:menu :menuone :noselect]
   :shortmess #($1:append {:c true})})

(fn init []
  (each [option value (pairs options)]
    (if (= :function (type value))
      (value (. vim.opt option))
      (tset vim.opt option value))))


{: init}
