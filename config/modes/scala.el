(use-package scala-mode2
  :commands scala-mode
  :config
  (add-to-list 'auto-mode-alist '("\\.scala$" . scala-mode))
  (add-to-list 'auto-mode-alist '("\\.sbt$" . scala-mode)))
