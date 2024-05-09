(use-package reftex
  :hook
  (LaTeX-mode . turn-on-reftex)
  :init
  (setq reftex-plug-into-AUCTeX t))
