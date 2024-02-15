;;; Package initialize
(require 'package)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;;; Packages
(use-package catppuccin-theme
  :ensure t
  :config
  (load-theme 'catppuccin t))

(use-package rainbow-delimiters
  :ensure t)

(use-package reddigg
  :ensure t)

(use-package mpv
  :ensure t)

(use-package empv
  :ensure t
  :config
  (setq empv-invidious-instance "https://invidious.lunar.icu/api/v1"))

(use-package display-wttr
  :ensure t
  :config
  (setq display-wttr-locations '("Fürth")))

(use-package mastodon
  :ensure t
  :config
  (setq mastodon-instance-url "https://fosstodon.org"
	mastodon-active-user "lettim"))

(use-package elfeed
  :ensure t
  :config
  (setq elfeed-feeds
	'(("https://www.phoronix.com/rss.php" it linux)
	  ("https://www.drwindows.de/news/feed" it windows)
	  ("https://www.heise.de/rss/heise-Rubrik-IT.rdf" it)
	  ("https://rss.golem.de/rss.php?feed=RSS2.0" it)
	  ("https://feeds.macrumors.com/" it mac)
	  ("https://www.gamingonlinux.com/article_rss.php" gaming linux)
	  ("https://www.mobiflip.de/feed/" it))))

(use-package slime
  :ensure t)

(use-package org-journal
  :ensure t
  :config
  (setq org-journal-file-type 'daily
	org-journal-dir "~/Dokumente/Journal"))

(use-package vterm
  :ensure t)

(use-package multi-vterm
  :ensure t)

(use-package pdf-tools
  :ensure t)

(use-package org-roam
  :ensure t
  :custom
  (org-roam-directory (file-truename "/Users/florian/Documents/org-roam"))
  :config
  (org-roam-db-autosync-mode)
  )

;;; Custom
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

;;; Looks
(setq inhibit-startup-message t
      frame-resize-pixelwise t)
(add-to-list 'default-frame-alist '(width . 110))
(add-to-list 'default-frame-alist '(height . 30))
(add-to-list 'default-frame-alist '(font . "Monaco-18"))
(add-to-list 'default-frame-alist '(internal-border-width . 13))


;;; Modes
;; look
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(tooltip-mode 0)

;; tab line
(setq tab-bar-new-tab-choice "*scratch*"
      tab-bar-new-button-show nil
      tab-bar-close-button-show nil
      tab-bar-separator "|")

;; function
(ido-mode t)

;; wttr
(display-wttr-mode t)

;; code
(defun my-program-modes ()
  (rainbow-delimiters-mode t)
  (display-line-numbers-mode t)
  (show-paren-mode t))
(add-hook 'prog-mode-hook #'my-program-modes)
(setq inferior-lisp-program "/usr/bin/sbcl")

;;; Settings
;; localization
(setq calender-date-style 'european
      time-date-locale "de_DE.UTF-8")
(set-language-environment "German")

;; emacs backup and history
(setq backup-by-copying t
      backup-directory-alist '(("." . "~/.emacs.d/saves/"))
      delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)

(savehist-mode t)
(setq savehist-file "~/.emacs.d/history")
(setq savehist-additional-variables '(kill-ring search-ring regexp-search-ring))

;; paren-mode
(setq show-paren-delay 0)

;; org-mode
(setq org-confirm-elisp-link-function nil)

;;; Keys
(global-set-key (kbd "C-x t t") 'multi-vterm)
(global-set-key (kbd "C-c <left>") 'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>") 'windmove-up)
(global-set-key (kbd "C-c <down>") 'windmove-down)

;; macOS
(setq ns-alternate-modifier 'meta)
(setq ns-right-alternate-modifier 'none)
