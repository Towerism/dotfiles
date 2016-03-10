(require 'org-autolist)
(require 'org-bullets)
(require 'evil-org)
(require 'init-evil-leader)

(setq org-latex-pdf-process
      '("pdflatex -interaction nonstopmode -output-directory %o %f"
	"bibtex %b"
	"pdflatex -interaction nonstopmode -output-directory %o %f"
	"pdflatex -interaction nonstopmode -output-directory %o %f"))

(defun my-org-mode-hook ()
  (org-autolist-mode)
  (org-bullets-mode)
  (evil-org-mode)
  (org-indent-mode)
  (org-auto-fill)
  (yas-minor-mode)
  (flyspell-mode))

(add-hook 'org-mode-hook
          'my-org-mode-hook)

(defun org-auto-fill ()
  (auto-fill-mode)
  (set-fill-column 80))

(setq org-startup-indented t
      org-log-done 'time
      org-agenda-skip-deadline-prewarning-if-scheduled t
      org-agenda-files '("~/todos"))

(evil-leader/set-key-for-mode 'org-mode
  "mb" 'browse-url-at-point
  "mcw" 'count-words
  "me" 'org-export-dispatch
  "mf" 'fill-paragraph
  "mta" 'org-table-align
  "mtc" 'org-table-create
  "mtJ" 'org-table-move-row-down
  "mtK" 'org-table-move-row-up
  "mtO" 'org-table-insert-row
  "mse" 'org-edit-src-code
  )

(el-init-provide)
