(use-package markdown-mode
  :init
  (progn
    (add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))
    (add-to-list 'auto-mode-alist '("\\.markdown$" . markdown-mode))))
