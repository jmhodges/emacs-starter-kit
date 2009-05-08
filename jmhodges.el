; Avoiding backspace
(global-set-key "\C-w" 'backward-kill-word)
; And rebind kill-region to these
(global-set-key "\C-x\C-k" 'kill-region)
; I don't agree with Yegge, yet.
; (global-set-key "\C-c\C-k" 'kill-region)

(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(add-to-list 'load-path "~/emacs/jmhodges")
(require 'font_config)
(require 'python_mode_config)
(require 'ruby_mode_config)
(require 'haml_mode_config)
(require 'c_mode_config)
(require 'java_mode_config)
(require 'yegge_stuff)
(require 'quack)
(setq browse-url-browser-function 'browse-default-macosx-browser)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(require 'thrift-mode)