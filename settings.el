(setq
 inhibit-startup-screen t
 create-lockfiles nil
 make-backup-files nil
 column-number-mode t
 scroll-error-top-bottom t
 show-paren-delay 0.5
 use-package-always-ensure t
 sentence-end-double-space nil)

;; buffer local variables
(setq-default
 indent-tabs-mode nil
 tab-width 4
 c-basic-offset 4)

;; modes
(electric-indent-mode 0)
(tool-bar-mode -1)

;; global keybindings
(global-unset-key (kbd "C-z"))

;; global auto reload
(global-auto-revert-mode t)
;; (global-linum-mode t)
;; (setq linum-format "%4d ")
