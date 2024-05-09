(use-package mu4e
  :ensure nil
  :config
  ;; use mu4e for e-mail in emacs
  (setq mail-user-agent 'mu4e-user-agent)

  (setq mu4e-get-mail-command "mbsync -a")

  ;; smtp mail setting
  ;;  (setq
  ;;   message-send-mail-function 'smtpmail-send-it
  ;;   smtpmail-default-smtp-server "smtp.example.com"
  ;;   smtpmail-smtp-server "smtp.example.com"
  ;;   smtpmail-local-domain "example.com"

  ;; don't keep message buffers around
  (setq message-kill-buffer-on-exit t)

  (setq mu4e-contexts `( ,(make-mu4e-context
                           :name "1akpall@fst.ee"
                           :enter-func (lambda ()
                                         (progn
                                           (setq mu4e-maildir-shortcuts '((:maildir "/archive" :key ?a)
                                                                          (:maildir "/akpall@fst.ee/INBOX" :key ?i)
                                                                          (:maildir "/drafts" :key ?d)
                                                                          (:maildir "/trash" :key ?d)
                                                                          (:maildir "/sent" :key ?s)))
                                           (add-to-list 'mu4e-bookmarks '(:query "maildir:\"/akpall@fst.ee/INBOX/Mailing lists/gentoo-dev\"" :name "gentoo-dev" :key ?d))
                                           (add-to-list 'mu4e-bookmarks '(:query "maildir:\"/akpall@fst.ee/INBOX/Mailing lists/gentoo-user\"" :name "gentoo-user" :key ?g))))
                           :vars '((user-mail-address . "akpall@fst.ee")
                                   (user-full-name . "Allen-Kristjan Päll"))))))
