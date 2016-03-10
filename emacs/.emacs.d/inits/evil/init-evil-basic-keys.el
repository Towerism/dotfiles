(require 'init-evil-leader)

(evil-leader/set-key
  "bb" 'helm-buffers-list
  "bd" 'kill-this-buffer
  "bp" 'previous-buffer
  "bn" 'next-buffer
  "be" 'eval-buffer
  "bs" 'edit-scratch
  "ff" 'helm-find-files
  "fed" 'edit-dotfile
  "fer" 'reload-dotfile
  "fw" 'save-buffer
  "fj" 'dired-jump
  "ir" 'indent-region
  "wc" 'delete-window
  "wh" 'evil-window-left
  "wj" 'evil-window-down
  "wk" 'evil-window-up
  "wl" 'evil-window-right
  "ws" 'evil-window-split
  "wv" 'evil-window-vsplit
  "wm" 'delete-other-windows
  "w=" 'balance-windows
  "!" 'shell-command
)

(setq dotfile "~/.emacs.d/init.el")

(defun edit-dotfile ()
  (interactive)
  (find-file dotfile))

(defun reload-dotfile ()
  (interactive)
  (load-file dotfile))

(defun edit-scratch ()
  (interactive)
  (switch-to-buffer "*scratch*"))

(el-init-provide)