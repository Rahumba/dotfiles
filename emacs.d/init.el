(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(tool-bar-mode nil)
 '(tooltip-mode nil)
 '(menu-bar-mode nil)
 '(scroll-bar-mode nil)
 '(frame-resize-pixelwise t)
 '(global-display-line-numbers-mode t)
 '(global-hl-line-mode t)
 '(show-paren-mode t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "agave Nerd Font Mono" :foundry "SAJA" :slant normal :weight normal :height 130 :width normal)))))

(setq inhibit-startup-screen t)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'dracula t)
;(add-to-list 'default-frame-alist '(height . 26))
;(add-to-list 'default-frame-alist '(width . 95))
