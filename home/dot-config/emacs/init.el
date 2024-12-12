;; adds MELPA to the list of package archives and initializes
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; defines a constant for the temporary directory path based on the user's UID
(defconst emacs-tmp-dir (expand-file-name (format "%d/emacs" (user-uid)) "/run/user/"))

;; sets various settings
(setq auto-save-file-name-transforms `((".*" ,emacs-tmp-dir t))
      auto-save-list-file-prefix emacs-tmp-dir
      backup-by-copying t
      backup-directory-alist `((".*" . ,emacs-tmp-dir))
      create-lockfiles nil
      custom-file (expand-file-name "custom.el" user-emacs-directory)
      delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      load-prefer-newer t
      package-native-compile t
      read-extended-command-predicate #'command-completion-default-include-p
      require-final-newline t
      tab-always-indent 'complete
      use-package-always-defer t
      use-package-always-ensure t
      version-control t)

;; creates custom file if it does not exist and loads it
(unless (file-exists-p custom-file)
  (write-region "" nil custom-file))
(load custom-file nil t)

;; adds a hook to clean up whitespace before saving files
(add-hook 'before-save-hook (lambda ()
			      (whitespace-cleanup)))

;; enables display-line-numbers-mode in prog-mode
(add-hook 'prog-mode-hook (lambda ()
			    (display-line-numbers-mode)))

;; enable various modes
(delete-selection-mode)
(display-time-mode)
(display-battery-mode)

;; loads all .el files from the "packages" directory
(let
    ((packages
      (directory-files
       (expand-file-name "packages" user-emacs-directory)
       t "\\.el$")))
  (dolist
      (package packages)
    (load package)))
