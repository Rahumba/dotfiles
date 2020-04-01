;;; init
(in-package :stumpwm)
(setf *default-package* :stumpwm)
(set-module-dir (concatenate 'string (getenv "HOME") "/.stumpwm.d/modules"))

;;; startup
(setf *startup-message* nil)
(setf *startup-message* "Hallo Florian!")

;;; autostart
; (run-shell-command "/home/florian/.fehbg &")
; (run-shell-command "xsetroot -cursor_name left_ptr &")
; (run-shell-command "vmware-user &")
; (run-shell-command "picom &")

;;; workspaces
(grename "emacs")
(gnewbg "term")
(gnewbg "browser")
(gnewbg "private")
; (gnewbg-float "float")

;;; load commands
(load "~/.stumpwm.d/commands.lisp")

;;; load keybindings
(load "~/.stumpwm.d/keybindings.lisp")

;;; load TTF
(load-module "ttf-fonts")
(xft:cache-fonts)
(set-font (make-instance 'xft:font :family "HeavyData Nerd Font" :subfamily "HeavyDataNerdFontComplete-" :size 8 :antialias t :width "normal" :slant "normal"))

;;; colors and border
(set-border-color "#bbbbbb") ;;; border color of message and input bar
(set-focus-color   "#B043D1")
(set-unfocus-color "#a3a2a2")
(set-float-focus-color "#B043D1")
(set-float-unfocus-color "#a3a2a2")
(setf *normal-border-width* 3)
(setf *window-border-style* :thick)

;;; configs
(setf *mouse-focus-policy* :click)
(setf *float-window-modifier* :ALT)

;;; message and input bar
(setf *message-window-gravity* :top)
(setf *input-window-gravity* :top)

;;; gaps
(load-module "swm-gaps")
(setf swm-gaps:*head-gaps-size* 0)
(setf swm-gaps:*inner-gaps-size* 5)
(setf swm-gaps:*outer-gaps-size* 20)

;;; notify module
; (load-module "notify")
; (notify:notify-server-toggle)

;;;  end session module
(load-module "end-session")

;;; global windows list module
(load-module "globalwindows")

;;; modeline
(load "~/.stumpwm.d/modeline.lisp")
