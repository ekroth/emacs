;; enable package
(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)

;; use-package is required by all other
(if (not (package-installed-p 'use-package))
    (progn
      (package-refresh-contents)
      (package-install 'use-package)))
(require 'use-package)

(add-to-list 'load-path "~/.emacs.d/config")
(add-to-list 'load-path "~/.emacs.d/modes")
(add-to-list 'load-path "/usr/share/emacs/site-lisp")

;; global backup directory
(setq backup-directory-alist `(("." . "~/.emacs.d/backups")))

;; no startup buffers
(setq inhibit-startup-screen t)
;; follow symlinks
(setq vc-follow-symlinks t)

;; setup gui
(load "~/.emacs.d/config/gui")

;; load modes
(load "~/.emacs.d/config/modes")

;; Aquamacs
(custom-set-variables
;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aquamacs-customization-version-id 305 t)
 '(aquamacs-tool-bar-user-customization nil t)
 '(default-frame-alist
    (quote
     ((menu-bar-lines . 0)
      (tool-bar-lines . 0)
      (vertical-scroll-bars))))
 '(font-use-system-font t)
 '(global-linum-mode t)
 '(gud-gdb-command-name "gdb --annotate=1")
 '(large-file-warning-threshold nil)
 '(ns-tool-bar-display-mode nil t)
 '(ns-tool-bar-size-mode nil t)
 '(tabbar-mode t nil (tabbar))
 '(visual-line-mode nil t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; OSX
(setq default-input-method "MacOSX")
(setq mac-command-modifier 'meta
      mac-option-modifier nil
      mac-allow-anti-aliasing t
      mac-command-key-is-meta t
      x-select-enable-clipboard t)
