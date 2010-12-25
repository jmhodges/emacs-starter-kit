; Avoiding backspace
(global-set-key "\C-w" 'backward-kill-word)
; And rebind kill-region to these
; (global-set-key "\C-x\C-k" 'kill-region)
; I don't agree with Yegge, yet.
(global-set-key "\C-c\C-k" 'kill-region)

(global-set-key "\C-c\M-." 'find-tag-other-window)

(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

; FIXME use load-file-name for this.
(add-to-list 'load-path "~/.emacs.d/jmhodges")

(add-to-list 'load-path "~/.emacs.d/jmhodges/scala-mode")
(add-to-list 'load-path "~/.emacs.d/jmhodges/go-mode")
(add-to-list 'load-path "~/.emacs.d/jmhodges/puppet-mode")

(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(defun whitespace-mode-hook ()
  (whitespace-mode)
  )

(add-hook 'coding-hook 'whitespace-mode-hook)
(remove-hook 'coding-hook 'pretty-lambdas)

(require 'font_config)
(require 'python_mode_config)
(require 'ruby_mode_config)
(require 'haml_mode_config)
(require 'c_mode_config)
(require 'java_mode_config)
(require 'yegge_stuff)
(require 'thrift-mode)
(require 'scala_mode_config)
(require 'autotest)
(require 'groovy_mode_config)
(require 'url_decode)
(require 'rcov-overlay)
(require 'yasnippet_mode_config)
(require 'full_ack_config)
(require 'erc_config)
(require 'org_mode_config)
(load-file "~/.emacs.d/jmhodges/puppet-mode/puppet-mode-init.el")
(load-file "~/.emacs.d/jmhodges/piglatin-mode/piglatin.el")

(require 'tramp-cmds) ; Fixing buggy emacs-starter-kit boot

(require 'go-mode-load)

(setq default-tab-width 4)
(remove-hook 'coding-hooks 'pretty-lambda)
(setq ispell-program-name "aspell")
(setq browse-url-browser-function 'browse-url-default-macosx-browser)
