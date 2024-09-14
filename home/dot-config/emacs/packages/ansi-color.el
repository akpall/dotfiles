(use-package ansi-color
  :init
  (defun ansi-color-on-buffer ()
    (interactive)
    (ansi-color-apply-on-region (point-min) (point-max))))
