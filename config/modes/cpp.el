(defun mpd-cpp-mode ()
  (c++-mode)
  (setq c-basic-offset 8)
  (setq indent-tabs-mode t))

(add-to-list 'auto-mode-alist '("\\.cxx$" . mpd-cpp-mode))
(add-to-list 'auto-mode-alist '("\\.hxx$" . mpd-cpp-mode))
