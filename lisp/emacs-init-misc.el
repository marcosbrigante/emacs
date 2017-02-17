;; Organize Emacs Backup Files 
;; ==============================
(defvar user-temporary-file-directory "~/.emacs-backup/" )
(make-directory user-temporary-file-directory t)
(setq backup-by-copying t)
(setq backup-directory-alist
      `(("." . ,user-temporary-file-directory)
        (,tramp-file-name-regexp nil)))
(setq auto-save-list-file-prefix
      (concat user-temporary-file-directory ".auto-saves-"))
(setq auto-save-file-name-transforms
      `((".*" ,user-temporary-file-directory t)))


;; Set startup folder
;; ==============================
(setq default-directory "c://dev/")

;; Always use Unicode
;; ==============================
(prefer-coding-system 'utf-8)

;; Set Organization
;; ==============================
(setenv "ORGANIZATION" "Ibiuna Investimentos") 

;; Show hidden files in Speedbar
;; ==============================
(setq speedbar-directory-unshown-regexp "^$")

;; Set indentation
;; ==============================
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
;;(setq indent-line-function 'insert-tab)

(setq c-basic-offset 4)
(setq js-indent-level 2)
(setq sgml-basic-offset 2)

(add-hook 'after-change-major-mode-hook
          '(lambda ()
             (setq-default indent-tabs-mode nil)
             (setq c-basic-indent 2)
             (setq tab-width 2)))

;; if indent-tabs-mode is off, untabify before saving
(add-hook 'write-file-hooks 
          (lambda () (if (not indent-tabs-mode)
                         (untabify (point-min) (point-max)))
            nil ))



;; Truncate lines
;; ==============================
(setq-default truncate-lines t)
(add-hook 'text-mode-hook 'toggle-truncate-lines)

;; Ibuffer column sizes
;; ==============================
(setq ibuffer-formats
      '((mark modified read-only " "
              (name 40 40 :left :elide) " "
              (size 9 -1 :right) " "
              (mode 16 16 :left :elide) " " filename-and-process)
        (mark " " (name 16 -1) " " filename)))

;; Reload files when changed on disk and buffer not modified
;; ==============================
(global-auto-revert-mode t)
