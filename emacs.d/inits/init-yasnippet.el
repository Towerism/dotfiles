(require 'yasnippet)
(require 'helm-c-yasnippet)
(require 'init-evil-leader)

(setq helm-yas-space-match-any-greedy t)

(add-to-list 'yas-snippet-dirs "~/.emacs.d/snippets")
(yas-reload-all)

(evil-leader/set-key
  "sc" 'helm-yas-complete
  "sr" 'helm-yas-create-snippet-on-region
  "sf" 'helm-yas-visit-snippet-file
  )

(el-init-provide)
