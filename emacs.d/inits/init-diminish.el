(require 'diminish)
(require 'init-evil)
(require 'init-smartparens)
(require 'init-yasnippet)
(require 'init-projectile)
(require 'init-company)

(diminish 'projectile-mode (format "P[%s]" (projectile-project-name)))
(diminish 'auto-revert-mode)
(diminish 'evil-escape-mode)
(diminish 'smartparens-mode)
(diminish 'undo-tree-mode)
(diminish 'yas-minor-mode)
(diminish 'company-mode)

(el-init-provide)
