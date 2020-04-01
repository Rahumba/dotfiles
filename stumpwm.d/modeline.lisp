;;; set mode-line variables
(setf
 *mode-line-background-color* "#222222";
 *mode-line-foreground-color* "#bbbbbb"
 *mode-line-border-color* "#222222"
 *mode-line-border-width* 2
 *group-format* " %t "
 *time-modeline-string* "%H:%M"
 *window-format* "<%n:%25t>"
 *screen-mode-line-format* (list "%g  %v ^> " '(:eval (swm-wttr-mode)) "  " '(:eval (swm-corona-mode)) "  " '(:eval (swm-vpn-mode)) "  " '(:eval (swm-ether-mode)) "   %d" )
 *mode-line-border-width* 1
)
