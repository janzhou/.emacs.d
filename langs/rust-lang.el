(use-package rust-mode
  :ensure t
  :defer t
  :init
  (require 'rust-mode)
  (global-company-mode)
  (add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))
  )

(provide 'rust-lang)
