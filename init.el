;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path (expand-file-name (concat user-emacs-directory "plugins")))
(add-to-list 'load-path (expand-file-name (concat user-emacs-directory "langs")))

(require 'settings)
(require 'cron-plugin)
(require 'files-plugin)
(require 'shell-plugin)
(require 'vc-plugin)
(require 'windows-plugin)
(require 'vim-plugin)

(require 'scala-lang)
(require 'rust-lang)
(require 'markdown-lang)

