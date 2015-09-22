(use-package prolog
  :commands prolog-mode
  :config
  (add-to-list 'auto-mode-alist '("\\.pl$" . prolog-mode)))
