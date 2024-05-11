(use-package dashboard
  :hook
  (emacs-startup . (lambda ()
		     (dashboard-refresh-buffer)))
  :init
  (setq dashboard-center-content t)
  (dashboard-setup-startup-hook))
