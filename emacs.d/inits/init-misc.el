(setq-default make-backup-files nil)

(let ((width 2))
  (setq-default
   indent-tabs-mode nil
   c-basic-offset width
   perl-indent-level width
   js-indent-level width))

(el-init-provide)
