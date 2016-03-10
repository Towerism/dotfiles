(require 'init-evil-leader)

(evil-leader/set-key
  ;;; buffer
  "bb" 'helm-buffers-list
  "bd" 'kill-this-buffer
  "bp" 'previous-buffer
  "bn" 'next-buffer
  "be" 'eval-buffer
  "bs" 'edit-scratch
  ;;; file
  "ff" 'helm-find-files
  "fed" 'edit-dotfile
  "fer" 'reload-dotfile
  "fw" 'save-buffer
  "fj" 'dired-jump
  ;;; window
  "wc" 'delete-window
  "wh" 'evil-window-left
  "wj" 'evil-window-down
  "wk" 'evil-window-up
  "wl" 'evil-window-right
  "wH" 'evil-window-move-far-left
  "wJ" 'evil-window-move-very-bottom
  "wK" 'evil-window-move-very-top
  "wL" 'evil-window-move-far-right
  "ws" 'evil-window-split
  "wv" 'evil-window-vsplit
  "wm" 'delete-other-windows
  "wr" 'evil-window-rotate-upwards
  "w=" 'balance-windows
  ;;; misc
  "!" 'shell-command
  "ir" 'indent-region
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
