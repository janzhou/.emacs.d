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
     "a" 'ag-project
     "A" 'ag
     "b" 'ido-switch-buffer
     "c" 'mc/mark-next-like-this
     "C" 'mc/mark-all-like-this
     "e" 'er/expand-region
     "E" 'mc/edit-lines
     "f" 'ido-find-file
     "g" 'magit-status
     "i" 'idomenu
     "j" 'ace-jump-mode
     "k" 'kill-buffer
     "K" 'kill-this-buffer
     "o" 'occur
     "p" 'magit-find-file-completing-read
     "r" 'recentf-ido-find-file
     "s" 'ag-project
     "t" 'bw-open-term
     "T" 'eshell
     "w" 'save-buffer
     "x" 'smex
     )))

(provide 'vim-plugin)
