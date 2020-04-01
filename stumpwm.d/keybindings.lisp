;;; set prefix
(set-prefix-key (kbd "C-t"))

;;; set keys
(define-key *root-map* (kbd "c") "exec st")
(define-key *root-map* (kbd "C-c") "swm-corona")
(define-key *root-map* (kbd "C-q") "exec slock")
(define-key *root-map* (kbd "C-f") "fullscreen")
(define-key *root-map* (kbd "C--") "toggle-gaps")
(define-key *root-map* (kbd "q") "end-session")
(define-key *root-map* (kbd "C-+") "float-this")
(define-key *root-map* (kbd "*") "unfloat-this")
(define-key *root-map* (kbd "C-v") "swm-vpn")
(define-key *root-map* (kbd "C-_") "mode-line")
