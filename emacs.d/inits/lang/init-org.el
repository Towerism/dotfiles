(require 'org-autolist)
(require 'org-bullets)
(require 'evil-org)
(require 'init-evil-leader)
(require 'init-evil)

(defun my-org-mode-hook ()
  (org-autolist-mode)
  (org-bullets-mode)
  (evil-org-mode)
  (org-indent-mode)
  (org-auto-fill)
  (org-init-calendar))

(add-hook 'org-mode-hook
          'my-org-mode-hook)

(defun org-auto-fill ()
  (auto-fill-mode)
  (set-fill-column 80))

(defun org-init-calendar ()
  (org-goto-calendar)
  (delete-window))

(setq org-startup-indented t
      org-log-done 'time)

(evil-leader/set-key-for-mode 'org-mode
  "mf" 'fill-paragraph
  "mta" 'org-table-align
  "mtc" 'org-table-create
  "mtJ" 'org-table-move-row-down
  "mtK" 'org-table-move-row-up
  "mtO" 'org-table-insert-row
  )

(el-init-provide)
