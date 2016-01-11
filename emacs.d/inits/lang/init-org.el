(require 'org-autolist)
(require 'org-bullets)
(require 'evil-org)
(require 'init-evil-leader)

(defun my-org-mode-hook ()
  (org-autolist-mode)
  (org-bullets-mode)
  (evil-org-mode)
  (org-indent-mode)
  (org-auto-fill))

(add-hook 'org-mode-hook
          'my-org-mode-hook)

(defun org-auto-fill ()
  (auto-fill-mode)
  (set-fill-column 80))

(setq org-startup-indented t)

(evil-leader/set-key-for-mode 'org-mode
  "mf" 'fill-paragraph
  )

(el-init-provide)
