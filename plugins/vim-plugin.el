(use-package evil
  :ensure t
  :config (evil-mode 1)
  :demand)

(use-package evil-leader
  :init (global-evil-leader-mode)
  :config
  (progn
    (setq evil-leader/in-all-states t)
    ;; keyboard shortcuts
    (evil-leader/set-leader "<SPC>")
    (evil-leader/set-key
     "ba" 'kill-this-buffer
     "bb" 'ido-switch-buffer
     "bw" 'save-buffer
     "bk" 'kill-buffer
     "fo" 'find-file
     "ff" 'ido-find-file
     "ft" 'neotree-toggle
     "fw" 'save-buffer
     "pf" 'projectile-find-file
     "pi" 'projectile-invalidate-cache
     "pp" 'projectile-mode
     "pf" 'projectile-find-file
     "gl" 'vc-print-root-log
     "ga" 'vc-register
     "gg" 'vc-next-action
     "gp" 'vc-pull
     "gu" 'vc-push
     "te" 'eshell
     "tp" 'powershell
     "tt" 'multi-term
     )))

(provide 'vim-plugin)
