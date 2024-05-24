(use-package dashboard
  :hook
  (emacs-startup . (lambda ()
		     (dashboard-refresh-buffer)))
  :init
  (setq dashboard-center-content t
	initial-buffer-choice (lambda () (get-buffer-create dashboard-buffer-name)))
  (dashboard-setup-startup-hook))
