;; Commands are all prefixed by C-x x. Here are the main commands:
;; ### Key       --    Command
;; - `s`  --  `persp-switch`: Query a perspective to switch or create
;; - `k`  --  `persp-remove-buffer`: Query a buffer to remove from current perspective
;; - `c`  --  `persp-kill` : Query a perspective to kill
;; - `r`  --  `persp-rename`: Rename current perspective
;; - `a`  --  `persp-add-buffer`: Querry an open buffer to add to current perspective
;; - `A`  --  `persp-set-buffer`: Add buffer to current perspective and remove it from all others
;; - `i`  --  `persp-import`: Import a given perspective from another frame.
;; - `n`, `<right>`  --  `persp-next` : Switch to next perspective
;; - `p`, `<left>`   --  `persp-prev`: Switch to previous perspective
;; Extension
;; - C-<i> -- `persp-ext-switch-index`: Switch to workspace at index

(use-package perspective
  :config
  (persp-mode 1)

  (defun persp-ext-switch-index (index)
    "Switches to the workspace at INDEX. Does nothing if out of bounds."
    (let ((target (elt (persp-all-names) index)))
      (if target
          (progn (persp-switch target) (message target)) (message "index out of bounds"))))

  (dotimes (i 6)
    (global-set-key
     (kbd (concat "^C " (number-to-string (1+ i))))
     (lexical-let ((lex-i i))
       (lambda () (interactive) (persp-ext-switch-index lex-i))))))
