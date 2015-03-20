;; OSX

;; Disable options saving
(setq aquamacs-save-options-on-quit nil)

;; Disable tabs
(setq tabbar-mode nil)

;; Use system font
(setq font-use-system-font t)

;; This does something to the font as well..
(setq default-frame-alist
    (quote
     ((menu-bar-lines . 0)
      (tool-bar-lines . 0)
      (vertical-scroll-bars))))

;; Set keys explicitly later on
(osx-key-mode 0)

;; Input mode
(setq default-input-method "MacOSX")

;; Meta key
(setq mac-command-modifier 'meta)

;; Disable option key
(setq mac-option-modifier nil)

;; Allow anti alias
(setq mac-allow-anti-aliasing t)

;; Enable clipboard
(setq x-select-enable-clipboard t)
