;; C
(defun linux-c-mode ()
  "C mode with adjusted defaults for use with the Linux kernel."
  (interactive)
  (c-mode)
  (c-set-style "K&R")
  (setq c-basic-offset 8))
(add-to-list 'auto-mode-alist '("\\.c$" . linux-c-mode))
(add-to-list 'auto-mode-alist '("\\.h$" . linux-c-mode))
