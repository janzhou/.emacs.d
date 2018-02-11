(use-package magit
  :ensure t
  :bind (("C-c l" . magit-log-head)
         ("C-c c" . magit-commit)
         ("C-c f" . magit-pull-from-upstream)
         ("C-c p" . magit-push-current-to-upstream))
  :pin melpa-stable)

