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

;; OSX
(load "~/.emacs.d/config/osx")
