;;; init
(in-package :stumpwm)
(setf *default-package* :stumpwm)
(set-module-dir (concatenate 'string (getenv "HOME") "/.stumpwm.d/modules"))

;;; startup
(setf *startup-message* nil)
(setf *startup-message* "StumpWM is ready!")

;;; autostart
; (run-shell-command "/home/florian/.fehbg &")
; (run-shell-command "xsetroot -cursor_name left_ptr &")
; (run-shell-command "vmware-user &")
; (run-shell-command "picom &")
(run-shell-command "hsetroot -fill Pictures/cyber_girl.jpg &")

;;; workspaces
(when *initializing*
    (grename "emacs")
    (gnewbg "term")
    (gnewbg "browser")
    (gnewbg "private"))
; (gnewbg-float "float")

;;; load commands
(load "~/.stumpwm.d/commands.lisp")

;;; load keybindings
(load "~/.stumpwm.d/keybindings.lisp")

;;; load TTF
(load-module "ttf-fonts")
; (xft:cache-fonts)
(set-font (make-instance 'xft:font :family "Iosevka Nerd Font" :subfamily "Bold" :size 7 :antialias t))
; (set-font "-*-fixed-medium-r-normal-*-*-140-*-*-*-*-*-*")

;;; colors and border
(set-border-color "#bbbbbb") ;;; border color of message and input bar
(set-focus-color   "#B043D1")
(set-unfocus-color "#a3a2a2")
(set-float-focus-color "#B043D1")
(set-float-unfocus-color "#a3a2a2")
(setf *normal-border-width* 3)
(setf *float-window-border* 3)
(setf *float-window-title-height* 15)
(setf *window-border-style* :thick)

;;; configs
(setf *mouse-focus-policy* :click)
(setf *float-window-modifier* :META)

;;; message and input bar
(setf *input-window-gravity* :top)
(setf *message-window-padding* 5
      *message-window-y-padding* 5
      *message-window-gravity* :top)

;;; gaps
(load-module "swm-gaps")
(setf swm-gaps:*head-gaps-size* 0
      swm-gaps:*inner-gaps-size* 5
      swm-gaps:*outer-gaps-size* 15)
(when *initializing*
  (swm-gaps:toggle-gaps))

;;; notify module -> No actions on notifications
; (load-module "notify")
; (when *initializing*
;   (notify:notify-server-toggle))
; (setf notify:*notify-server-title-color* "^7" 
;       notify:*notify-server-body-color* "^7"
;      notify:*notify-server-max-title-lines* 1)

;;;  end session module
(load-module "end-session")

;;; global windows list module
(load-module "globalwindows")

;;; modeline
(load "~/.stumpwm.d/modeline.lisp")
(when *initializing*
  (mode-line))

;;; swm-ssh
(load-module "swm-ssh")
(setq swm-ssh:*swm-ssh-default-term* "st")

;;; load window placement rules
(load "~/.stumpwm.d/placement.lisp")

;;; alert module
(load-module "alert-me")

;;; menu for stumpwm
(load-module "app-menu")
(setq app-menu:*app-menu*
      '(("Brave" brave)
	("Emacs" "emacs")
	("Directory Studio" "apachedirectorystudio")
	("QBittorrent" "qbittorrent")
	("Tor Browser" "tor-browser")))

;;; globalwindow
(load-module "globalwindows")
