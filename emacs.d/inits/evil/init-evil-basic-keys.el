(require 'init-evil-leader)

(evil-leader/set-key
  "bb" 'helm-buffers-list
  "bd" 'kill-this-buffer
  "bp" 'previous-buffer
  "bn" 'next-buffer
  "fe" 'helm-find-files
  "fw" 'save-buffer
  "fj" 'dired-jump
  "ir" 'indent-region
  "wc" 'delete-window
  "wh" 'evil-window-left
  "wj" 'evil-window-down
  "wk" 'evil-window-up
  "wl" 'evil-window-right
  "wv" 'evil-window-vsplit
  "ws" 'evil-window-split
  "wm" 'delete-other-windows
  "!" 'shell-command
)

(el-init-provide)
