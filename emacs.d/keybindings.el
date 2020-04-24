(global-set-key (kbd "C-s-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "C-s-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "C-s-<down>") 'shrink-window)
(global-set-key (kbd "C-s-<up>") 'enlarge-window)

;;; slime keybindings on macOS
(global-set-key (kbd "M-<up>") 'slime-repl-backward-input)
(global-set-key (kbd "M-<down>") 'slime-repl-forward-input)
