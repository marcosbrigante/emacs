;;; emacs-init-modes --- My modes configuration
(use-package ergoemacs-mode
  :ensure t
  :init
  (setq ergoemacs-theme nil) ;; Uses Standard Ergoemacs keyboard theme
  (setq ergoemacs-keyboard-layout "us")
  :config
  (ergoemacs-mode 1) ;; Assumes QWERTY keyboard layout
  )

;; color-theme-mode
(use-package sublime-themes
  :ensure t
  :config
  (require 'sublime-themes)
  (load-theme 'spolsky)
  )

;; yasnippet
(use-package yasnippet
  :ensure t
  :config
  (require 'yasnippet)
  (yas-global-mode 1)
  )

;; auto-complete
(use-package auto-complete
  :ensure t
  :config
  (require 'auto-complete-config)
  (ac-config-default)
  (add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-1.5.1/dict")
  )

;; flycheck
(use-package flycheck
  :ensure t
  :config
  (require 'flycheck)

  ;; turn on flychecking globally
  (add-hook 'after-init-hook #'global-flycheck-mode)

  ;; disable jshint since we prefer eslint checking
  (setq-default flycheck-disabled-checkers
		(append flycheck-disabled-checkers
			'(javascript-jshint)))

  ;; disable json-jsonlist checking for json files
  (setq-default flycheck-disabled-checkers
		(append flycheck-disabled-checkers
			'(json-jsonlist)))
  )

;; web-mode
(use-package web-mode
  :ensure t
  :config
  (require 'web-mode)
  (add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
  (setq web-mode-enable-current-element-highlight t)
  (setq web-mode-enable-current-column-highlight t)
  (setq web-mode-engines-alist
	'(("angular" . "\\.tpl\\.html\\'")))
  )

;;fill-column-indicator
(use-package fill-column-indicator
  :ensure t
  :config
  (require 'fill-column-indicator)
  (setq fci-rule-column 100) ;; show line on column 100
  )

;;js2
(use-package js2-mode
  :ensure t
  :config
  (add-hook 'js2-mode-hook
	  (defun my-js2-mode-setup ()
	    (flycheck-mode t)
	    (when (executable-find "eslint")
	      (flycheck-select-checker 'javascript-eslint))))
   (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
   )

(use-package groovy-mode
  :ensure t
  )

;; auto-insert - headers in new files
(auto-insert-mode)


