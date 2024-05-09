(use-package whitespace
  :hook
  (before-save . (lambda ()
		   (whitespace-cleanup))))
