
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(load-file "~/.emacs.d/settings.el")
(load-file "~/.emacs.d/plugins/init.el")
(load-file "~/.emacs.d/themes/init.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "4486ade2acbf630e78658cd6235a5c6801090c2694469a2a2b4b0e12227a64b9" default)))
 '(package-selected-packages
   (quote
    (solarized-theme dracula-theme oceanic-theme diff-hl powershell multi-term auto-package-update ws-butler winum which-key wgrep volatile-highlights vi-tilde-fringe uuidgen use-package unfill toc-org spaceline smex smeargle restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox orgit org-bullets open-junk-file noflet neotree mwim move-text mmm-mode markdown-toc magit-gitflow macrostep lorem-ipsum linum-relative link-hint ivy-hydra indent-guide hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-make google-translate golden-ratio gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link gh-md fuzzy flx-ido fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu ensime elisp-slime-nav dumb-jump diminish define-word counsel-projectile company-statistics column-enforce-mode clean-aindent-mode auto-yasnippet auto-highlight-symbol auto-compile aggressive-indent adaptive-wrap ace-window ace-link ac-ispell))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
