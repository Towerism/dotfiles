(require 'projectile)
(require 'helm-projectile)

(projectile-global-mode)

(evil-leader/set-key
  "pp" 'helm-projectile-switch-project
  "pf" 'helm-projectile-find-file
  "pc" 'projectile-compile-project
  "mgs" 'projectile-find-other-file
)
