(module lib.qfloc
  {autoload {a aniseed.core}})

; local M = {}

; M.toggle_qf = function()
;   local qf_exists = false
;   for _, win in pairs(vim.fn.getwininfo()) do
;     if win["quickfix"] == 1 then
;       qf_exists = true
;     end
;   end
;   if qf_exists == true then
;     vim.cmd "cclose"
;     return
;   end
;   if not vim.tbl_isempty(vim.fn.getqflist()) then
;     vim.cmd "copen"
;   end
; end

; return M


(defn get
  [target]
  (case target
    :c (vim.fn.getqflist)
    :l (vim.fn.getloclist)
    _ (error (.. "Unrecognized target " target))))

(defn name
  [target]
  (. {:c :quickfix
      :l :location}
     target))

(defn open?
  [target]
  (a.some
    #(= 1 (. $1 (name target)))
    (vim.fn.getwininfo)))

(defn open!
  [target]
  (if (a.empty? (get target))
    (vim.notify (.. (name target) "list is empty") vim.log.levels.WARN)
    (vim.cmd (.. target "open"))))

(defn close!
  [target]
  (vim.cmd (.. target "close")))

(defn toggle
  [target]
  (if (open? target)
    (close! target)
    (open! target)))

(comment
  (open! :c)
  (a.map #(. $1 :quickfix) (vim.fn.getwininfo)))
