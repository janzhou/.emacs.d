(use-package multi-term
  :ensure t
  :bind (("C-c t" . multi-term)
         ("C-c \"" . multi-term-dedicated-toggle))
  :config
  (setq multi-term-program (getenv "SHELL")
        multi-term-buffer-name "term"
        multi-term-dedicated-select-after-open-p t))

(defun sh (name)
  "Create a shell buffer named NAME."
  (interactive "sName: ")
  (setq name (concat "$" name "$"))
  (if (get-buffer name)
      (switch-to-buffer name)
    (eshell)
    (rename-buffer name)))
