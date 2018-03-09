;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path (expand-file-name (concat user-emacs-directory "plugins")))

(require 'settings)
(require 'cron-plugin)
(require 'files-plugin)
(require 'shell-plugin)
(require 'vc-plugin)
(require 'windows-plugin)
(require 'vim-plugin)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (evil-leader evil ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package unfill undo-tree toc-org spaceline smartparens restart-emacs request rainbow-delimiters powershell popwin persp-mode pcre2el paradox org-plus-contrib org-bullets open-junk-file noflet neotree mwim multi-term move-text mmm-mode markdown-toc macrostep lorem-ipsum linum-relative link-hint indent-guide iedit hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-flx helm-descbinds helm-company helm-c-yasnippet helm-ag goto-chg google-translate golden-ratio gh-md fuzzy flyspell-correct-helm flycheck-pos-tip flx-ido fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell eval-sexp-fu ensime elisp-slime-nav dumb-jump diminish diff-hl define-word company-statistics column-enforce-mode clean-aindent-mode bind-map auto-yasnippet auto-package-update auto-highlight-symbol auto-dictionary auto-compile anzu aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
