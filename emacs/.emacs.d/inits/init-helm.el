(require 'helm)
(require 'init-evil-leader)

(global-set-key (kbd "M-x") 'helm-M-x)

(evil-leader/set-key
  ":" 'helm-M-x
)

(el-init-provide)
