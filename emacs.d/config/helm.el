(require 'helm)

(global-set-key (kbd "M-x") 'helm-M-x)

(evil-leader/set-key
  ":" 'helm-M-x
)
