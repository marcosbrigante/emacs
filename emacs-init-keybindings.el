;; emacs-init-keybindings.el

;; Movements
;; ==============================
(setq w32-pass-lwindow-to-system nil
      w32-pass-rwindow-to-system nil)

(setq w32-lwindow-modifier 'super)  ; lwindow acts as super
(setq w32-rwindow-modifier 'hyper)  ; rwindow acts as hyper

;; Setup window movement with Windows key and Ergo Moves
;; ==============================
(global-set-key (kbd "C-S-o") 'speedbar-get-focus)
(global-set-key (kbd "C-S-k") 'windmove-down)
(global-set-key (kbd "C-S-j") 'windmove-left)
(global-set-key (kbd "C-S-l") 'windmove-right)
(global-set-key (kbd "C-S-i") 'windmove-up)
(global-set-key (kbd "M-1") 'delete-other-windows)
(global-set-key (kbd "M-2") 'split-window-vertically)
(global-set-key (kbd "M-3") 'split-window-horizontally)
(global-set-key (kbd "C-b") 'ibuffer)

;; HTML
;; ==============================
(defun my-html-mode-config ()
  "For use in `html-mode-hook'."
  (local-set-key (kbd "<C-right>") 'sgml-skip-tag-forward)
  (local-set-key (kbd "<C-left>") 'sgml-skip-tag-backward)
  )

(add-hook 'html-mode-hook 'my-html-mode-config)

;; OmniSharp
;; ==============================
(defun my-omnisharp-keybindings ()
 "For use in `omnisharp-mode-hook'"
 (local-set-key (kbd "<C-S-SPC>") 'omnisharp-auto-complete) 
)

(add-hook 'omnisharp-mode-hook 'my-omnisharp-keybindings)
;;(define-key popup-menu-keymap (kbd "<M-k>") 'popup-next)
