;;; set mode-line variables
(setf
 *mode-line-background-color* "#222222";
 *mode-line-foreground-color* "#bbbbbb"
 *mode-line-border-color* "#222222"
 *mode-line-border-width* 0
 *mode-line-timeout* 1
 *group-format* " %t "
 *time-modeline-string* "%H:%M"
 *window-format* "<%n:%25t>"
 *screen-mode-line-format* (list "%g  %v ^> " '(:eval  (string-trim '(#\Newline) (run-shell-command "wttr" t))) " | " '(:eval  (string-trim '(#\Newline) (run-shell-command "corona" t))) " | " '(:eval (string-trim '(#\Newline) (run-shell-command "vpn" t))) " |  %d")
)
