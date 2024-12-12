;;; -*- no-byte-compile: t -*-

;; boosts GC threshold for faster startup, then resets
(setq
 startup/gc-cons-threshold gc-cons-threshold
 gc-cons-threshold most-positive-fixnum)
(add-hook 'emacs-startup-hook
	  #'(lambda ()
	      (setq gc-cons-threshold startup/gc-cons-threshold)))

;; disables menu, tool, and scroll bars
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; sets "Dina" as the default font
(add-to-list 'default-frame-alist '(font . "Dina"))

(require 'package)
(require 'use-package)
