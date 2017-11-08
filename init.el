;; global variables
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
(global-linum-mode t)
(setq linum-format "%4d ")

;; the package manager
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

(use-package solarized-theme
  :ensure t
  :config 
  (load-theme 'solarized-dark t))

(use-package evil
  :ensure t
  :config (evil-mode 1)
  :demand)

(use-package ensime
  :ensure t
  :demand
  :config
  (setq
   ensime-sbt-command "/usr/bin/sbt"
   sbt:program-name "/usr/bin/sbt.bat")
  :pin melpa-stable)

(use-package magit
  :ensure t
  :bind (("C-c l" . magit-log-head)
         ("C-c c" . magit-commit)
         ("C-c f" . magit-pull-from-upstream)
         ("C-c p" . magit-push-current-to-upstream))
  :pin melpa-stable)

(defun sh (name)
  "Create a shell buffer named NAME."
  (interactive "sName: ")
  (setq name (concat "$" name "$"))
  (if (get-buffer name)
      (switch-to-buffer name)
    (eshell)
    (rename-buffer name)))

(use-package chinese-pyim
  :ensure t
  :config
  (use-package chinese-pyim-wbdict
    :ensure t
    :config (chinese-pyim-wbdict-gbk-enable))
  (setq default-input-method "chinese-pyim")
  (setq pyim-default-scheme 'wubi)
  (setq pyim-page-tooltip 'popup)
  (setq pyim-page-length 5))

(use-package hyde
  :ensure t
  :pin melpa)

(use-package multi-term
  :ensure t
  :bind (("C-c t" . multi-term)
         ("C-c \"" . multi-term-dedicated-toggle))
  :config
  (setq multi-term-program (getenv "SHELL")
        multi-term-buffer-name "term"
        multi-term-dedicated-select-after-open-p t))

(use-package auto-package-update
  :ensure t
  :config
  (setq auto-package-update-delete-old-versions t
        auto-package-update-interval 7)
  (auto-package-update-maybe))
