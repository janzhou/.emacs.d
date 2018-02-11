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

(use-package auto-package-update
  :ensure t
  :config
  (setq auto-package-update-delete-old-versions t
        auto-package-update-interval 7)
  (auto-package-update-maybe))

(load-file "~/.emacs.d/plugins/vim.el")
(load-file "~/.emacs.d/plugins/scala.el")
(load-file "~/.emacs.d/plugins/git.el")
(load-file "~/.emacs.d/plugins/jekyll.el")
(load-file "~/.emacs.d/plugins/shell.el")
(load-file "~/.emacs.d/plugins/neotree.el")
(load-file "~/.emacs.d/plugins/markdown.el")
