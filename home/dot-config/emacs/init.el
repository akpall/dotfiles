;; adds MELPA to package archives and initializes
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; loads use-package and sets default options
(require 'use-package)
(setq use-package-always-defer t
      use-package-always-ensure t)

;; creates and loads custom.el if it doesn't exist
(setq custom-file
      (expand-file-name "custom.el" user-emacs-directory))
(unless (file-exists-p custom-file)
  (write-region "" nil custom-file))
(load custom-file nil t)

;; ensures files end with a newline
(setq require-final-newline t)

(add-hook 'before-save-hook (lambda ()
			      (whitespace-cleanup)))

;; loads all .el files in the "packages" directory
(let
    ((packages
      (directory-files
       (expand-file-name "packages" user-emacs-directory)
       t "\\.el$")))
  (dolist
      (package packages)
    (load package)))
