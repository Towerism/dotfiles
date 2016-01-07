(require 'evil-leader)
(require 'evil-magit)
(require 'evil)
(require 'helm)

(evil-mode 1)

(setq-default evil-escape-key-sequence "fd")
(evil-escape-mode 1)

(global-evil-leader-mode)

(evil-leader/set-leader "<SPC>")
(evil-leader/set-key
  "bb" 'helm-buffers-list
  "bd" 'kill-this-buffer
  "bp" 'previous-buffer
  "bn" 'next-buffer
  "fe" 'helm-find-files
  "fw" 'save-buffer
  "fj" 'dired-jump
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
