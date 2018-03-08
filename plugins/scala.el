(use-package ensime
  :ensure t
  :demand
  :config
  (setq
   ensime-sbt-command "~/.sbt/bin/sbt"
   sbt:program-name "~/.sbt/bin/sbt.bat")
  :pin melpa-stable)
