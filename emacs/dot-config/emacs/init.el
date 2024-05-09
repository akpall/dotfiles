;;; init.el -*- lexical-binding: t; no-byte-compile: t -*-

;;; For performance
(setq startup/gc-cons-threshold gc-cons-threshold
      gc-cons-threshold most-positive-fixnum)
(add-hook 'emacs-startup-hook
          #'(lambda ()
              (setq gc-cons-threshold startup/gc-cons-threshold)))

;;; Load sanemacs.el
(load (expand-file-name "sanemacs.el" user-emacs-directory) nil t)

;;; Load packages
(let ((packages (directory-files (expand-file-name "packages"
                                                   user-emacs-directory)
                                 t
                                 "\\.el$")))
  (dolist (package packages)
    (load package nil t)))
