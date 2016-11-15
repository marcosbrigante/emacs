;; emacs-init-modes.el

;; ergoemacs-mode
(setq ergoemacs-theme nil) ;; Uses Standard Ergoemacs keyboard theme
(setq ergoemacs-keyboard-layout "us") ;; Assumes QWERTY keyboard layout
(ergoemacs-mode 1)

;; auto-complete-mode
(require 'auto-complete-config)
(ac-config-default)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-20140208.653/dict")

;; color-theme-mode
;; (require 'color-theme)
;; (add-to-list 'load-path "~/.emacs.d/color-themes")
;; (color-theme-initialize)
;; (require 'color-theme-tango)
;; (require 'color-theme-subdued)
;; (require 'color-theme-zenburn)
;; (require 'color-theme-gruber-darker)
(require 'sublime-themes)

;; yasnippet
(require 'yasnippet)
(yas-global-mode 1)

;; angular-snippets
(require 'angular-snippets)

;; flymake-jshint
(autoload 'flymake-jshint "flymake-jshint"
  "Error and linting support mode for JavaScript." t nil)

(add-hook 'js-mode-hook
          (lambda () (flymake-mode 1)))

(add-hook 'js-mode-hook
          (lambda () (flymake-jshint-load)))

;; less-css-mode
(require 'less-css-mode)

;; flymake-less
(require 'flymake-less)

;; flymake-cursor
(require 'flymake-cursor)

;; auto-insert - headers in new files
(auto-insert-mode)

;; web-mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(setq web-mode-enable-current-element-highlight t)
(setq web-mode-enable-current-column-highlight t)
(setq web-mode-engines-alist
      '(("angular" . "\\.tpl\\.html\\'")))     

;;fill-column-indicator - show column 100
(require 'fill-column-indicator)
(setq fci-rule-column 100)
