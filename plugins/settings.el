(load-theme 'tango-dark t)

(require 'package)
(setq
 package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                    ("org" . "http://orgmode.org/elpa/")
                    ("melpa" . "http://melpa.org/packages/")
                    ("melpa-stable" . "http://stable.melpa.org/packages/"))
 package-archive-priorities '(("melpa-stable" . 1)))

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

(use-package auto-package-update
  :ensure t
  :config
  (setq auto-package-update-delete-old-versions t
        auto-package-update-interval 7)
  (auto-package-update-maybe))

(setq
 inhibit-startup-screen t
 create-lockfiles nil
 make-backup-files nil
 line-number-mode t
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
(xterm-mouse-mode)
(electric-indent-mode 0)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; global keybindings
(global-unset-key (kbd "C-z"))

;; global auto reload
(global-auto-revert-mode t)
;; (global-linum-mode t)
;; (setq linum-format "%4d ")

(set-default-font "Consolas")
(set-fontset-font "fontset-default"  
                  'gb18030' ("Microsoft Yahei" . "unicode-bmp"))
(set-face-attribute 'default nil :height 120)

(setq default-directory (concat (getenv "HOME") "/"))

(cua-mode t)

(provide 'settings)
