;; emacs-init-ui.el

;; Remove Toolbar
(tool-bar-mode -1)

;; Initial position
(set-frame-width (selected-frame) 140)
(set-frame-height (selected-frame) 40)
(set-frame-position (selected-frame) 250 0)

;; Start Speedbar
(speedbar)
(speedbar-toggle-show-all-files)

;; Set Theme
(load-theme 'spolsky)
