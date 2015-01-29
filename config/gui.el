(use-package color-theme :ensure color-theme)
(use-package color-theme-solarized :ensure color-theme-solarized)

;; theme
(load-theme 'solarized-light t)

;; remove gui
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;; Line numbers
(require 'linum)
(global-linum-mode 1)
(setq linum-format "%d ")
(column-number-mode 1)

;; Pretty word wrapping
(global-visual-line-mode 1)

;; trailing whitespace
(setq-default show-trailing-whitespace t)
;; but not for ansi-term
(add-hook 'ansi-term
          (lambda () (setq show-trailing-whitespace t)))

;; font
(custom-set-variables
'(font-use-system-font t))
