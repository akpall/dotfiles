(use-package erc-hl-nicks
  :defer nil
  :requires erc
  :config
  (add-to-list 'erc-modules 'hl-nicks)
  (erc-update-modules))
