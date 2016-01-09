(setq-default make-backup-files nil)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

(let ((width 2))
  (setq-default
   indent-tabs-mode nil
   c-basic-offset width
   perl-indent-level width
   js-indent-level width))

(el-init-provide)
