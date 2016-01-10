(require 'org-autolist)
(require 'org-bullets)
(require 'evil-org)
(require 'init-evil-leader)

(add-hook 'org-mode-hook
          'org-autolist-mode)

(add-hook 'org-mode-hook
          'org-bullets-mode)

(add-hook 'org-mode-hook
          'evil-org-mode)

(add-hook 'org-mode-hook
          'org-indent-mode)

(defun org-auto-fill ()
  (auto-fill-mode)
  (set-fill-column 80))

(add-hook 'org-mode-hook
          'org-auto-fill)

(setq org-startup-indented t)

(evil-leader/set-key-for-mode 'org-mode
  "mf" 'fill-paragraph
  )

(el-init-provide)
