(use-package cuda-mode
  :config
  (add-to-list 'auto-mode-alist '("\\.cu$" . cuda-mode))
  (add-to-list 'auto-mode-alist '("\\.cuda$" . cuda-mode)))
