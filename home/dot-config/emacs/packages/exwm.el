(use-package exwm
  :init
  (setq exwm-workspace-number 4
	exwm-input-global-keys `((,(kbd "s-R") . exwm-reset)
				 (,(kbd "s-W") . exwm-workspace-switch)
				 (,(kbd "s-D") . (lambda (command)
						   (interactive (list (read-shell-command "$ ")))
						   (start-process-shell-command command nil command)))
				 (,(kbd "s-B") . (lambda ()
						   (interactive)
						   (start-process "firefox" nil "firefox")))
				 ,@(mapcar (lambda (i)
					     `(,(kbd (format "s-%d" i)) .
					       (lambda ()
						 (interactive)
						 (exwm-workspace-switch-create ,i))))
					   (number-sequence 0 9)))
	exwm-input-simulation-keys `((,(kbd "C-b") . [left])
				     (,(kbd "C-f") . [right])
				     (,(kbd "C-p") . [up])
				     (,(kbd "C-n") . [down])
				     (,(kbd "C-a") . [home])
				     (,(kbd "C-e") . [end])
				     (,(kbd "M-v") . [prior])
				     (,(kbd "C-v") . [next])
				     (,(kbd "C-d") . [delete])
				     (,(kbd "C-k") . [S-end delete])))
  :hook
  (exwm-update-class . (lambda ()
			 (exwm-workspace-rename-buffer exwm-class-name)))
  :config
  (require 'exwm-randr)
  (exwm-randr-enable))
