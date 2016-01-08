(require 'evil-leader)
(require 'evil-magit)
(require 'evil-org)
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
  "ci" 'evilnc-comment-or-uncomment-lines
  "cl" 'evilnc-quick-comment-or-uncomment-to-the-line
  "ll" 'evilnc-quick-comment-or-uncomment-to-the-line
  "cc" 'evilnc-copy-and-comment-lines
  "cp" 'evilnc-comment-or-uncomment-paragraphs
  "cr" 'comment-or-uncomment-region
  "cv" 'evilnc-toggle-invert-comment-line-by-line
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
