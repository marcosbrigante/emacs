;; init.el
;; Marcos Brigante

(add-to-list 'load-path "~/.emacs.d")

;; Package Management
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
  )

;; Set custom file (settings managed by emacs' custom system)
(setq custom-file "~/.emacs.d/emacs-init-custom.el")

;; Loads
(load custom-file)
(load "emacs-init-modes")
(load "emacs-init-auto-insert-templates")
(load "emacs-init-keybindings")
(load "emacs-init-misc")
(load "emacs-init-ui")
(server-start)


