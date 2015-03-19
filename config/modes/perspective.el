; ### Key       --    Command
; - `s`  --  `persp-switch`: Query a perspective to switch or create
; - `k`  --  `persp-remove-buffer`: Query a buffer to remove from current perspective
; - `c`  --  `persp-kill` : Query a perspective to kill
; - `r`  --  `persp-rename`: Rename current perspective
; - `a`  --  `persp-add-buffer`: Querry an open buffer to add to current perspective
; - `A`  --  `persp-set-buffer`: Add buffer to current perspective and remove it from all others
; - `i`  --  `persp-import`: Import a given perspective from another frame.
; - `n`, `<right>`  --  `persp-next` : Switch to next perspective
; - `p`, `<left>`   --  `persp-prev`: Switch to previous perspective

(use-package perspective
    :init (persp-mode 1))
