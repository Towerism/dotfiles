(setq-default make-backup-files nil)

(let ((width 2))
  (setq-default
   indent-tabs-mode nil
   c-basic-offset width
   perl-indent-level width
   js-indent-level width))

(dtrt-indent-mode 1) ;; infer indentation on a per-buffer basis

(el-init-provide)
