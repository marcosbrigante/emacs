;;; init.el
;;; Marcos Brigante
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
  )

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(add-to-list 'load-path "~/.emacs.d/lisp")

;;; Set custom file (settings managed by emacs' custom system)
(setq custom-file "~/.emacs.d/lisp/emacs-init-custom.el")

;; Loads
(load custom-file)
(load "emacs-init-modes")
;; (load "emacs-init-auto-insert-templates")
(load "emacs-init-keybindings")
;; (load "emacs-init-misc")
(load "emacs-init-ui")
(server-start)


