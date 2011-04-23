(require 'growl)

(defun merc ()
  (interactive)
  (require 'erc-services)
  (require 'erc_page_me) ;; necessary to get the PRIVMSG hooks in the right order
  (setq erc-autojoin-channels-alist
        '(("freenode.net" "#leanintoit buttheadz")))
  (load "erc_pass.el")
  (setq erc-keywords '("\\bjeff\\b" "\\bhodges\\b" "\\bhaj+i+s*\\b"))
  (erc :server "irc.freenode.net" :port 6667 :nick "jmhodges" :password freenode-nick-pass)
  )

(provide 'erc_config)
