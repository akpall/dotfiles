(use-package erc
  :init
  (setq erc-autojoin-channels-alist '((Libera.Chat "#emacs" "#gentoo" "#gentoo-chat")
				      (IRCnet "#linux.ee"))
	erc-autojoin-timing 'ident
	erc-format-nick-function #'erc-format-@nick
	erc-join-buffer 'bury
	erc-lurker-hide-list '("JOIN" "PART" "QUIT")
	erc-lurker-threshold-time 43200
	erc-rename-buffers t)
  (defun erc-ircnet ()
    "Start ERC connection to IRCnet"
    (interactive)
    (erc :server "irc.datanet.ee" :port 6667 :nick "trashpad"))
  (defun erc-libera-chat ()
    "Start ERC connection to Libera.Chat"
    (interactive)
    (erc-tls :server "irc.libera.chat" :port 6697 :nick "trashpad"))
  (defun erc-start ()
    "Start ERC connections to all defined irc networks"
    (interactive)
    (erc-libera-chat)
    (erc-ircnet)))
