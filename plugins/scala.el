(use-package ensime
  :ensure t
  :demand
  :config
  (setq
   ensime-sbt-command "/usr/bin/sbt"
   sbt:program-name "/usr/bin/sbt.bat")
  :pin melpa-stable)
