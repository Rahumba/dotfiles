;;; pulseaudio
;;; mute
(defcommand pa_mute () ()
  "mute pulseaudio"
  (uiop:run-program "pamixer -t")
  (defparameter pa_state (ignore-errors (uiop:run-program "pamixer --get-volume-human" :output :string)))
  (substitute #\Space #\Newline pa_state)
  (if (string-equal pa_state "NIL")
      (message "muted")
    (message "~a" pa_state)))

;;; increase volume
(defcommand pa_louder () ()
  "increase pulseaudio volume"
  (uiop:run-program "pamixer -i 5")
  (defparameter pa_state (ignore-errors (uiop:run-program "pamixer --get-volume-human" :output :string)))
  (substitute #\Space #\Newline pa_state)
  (if (string-equal pa_state "NIL")
      (message "muted")
    (message "~a" pa_state)))

;;; decrease volume
(defcommand pa_lower () ()
  "decrease pulseaudio volume"
  (uiop:run-program "pamixer -d 5")
  (defparameter pa_state (ignore-errors (uiop:run-program "pamixer --get-volume-human" :output :string)))
  (substitute #\Space #\Newline pa_state)
  (if (string-equal pa_state "NIL")
      (message "muted")
          (message "~a" pa_state)))

;;; show corona stats
(defcommand swm-corona () ()
  "show corona stats"
  (defparameter corona_stats (ignore-errors (uiop:run-program "corona" :output :string)))
  (substitute #\Space #\Newline corona_stats)
  (message "~a" corona_stats))

;;; show vpn status
(defcommand swm-vpn () ()
  "show vpn status"
  (defparameter vpn_status (ignore-errors (uiop:run-program "vpn" :output :string)))
  (substitute #\Space #\Newline vpn_status)
  (message "~a" vpn_status))

;;; show corona stats in mode-line
(defcommand swm-corona-mode () ()
  "show corona stats in mode-line"
  (defparameter corona_stats (ignore-errors (uiop:run-program "corona" :output :string)))
  (write (string-trim '(#\Newline) corona_stats)))

;;; show vpn status in mode-line
(defcommand swm-vpn-mode () ()
  "show vpn status in mode-line"
  (defparameter vpn_status (ignore-errors (uiop:run-program "vpn" :output :string)))
  (write (string-trim '(#\Newline) vpn_status)))

;;; show weather in mode-line
(defcommand swm-wttr-mode () ()
  "show weather in mode-line"
  (defparameter wttr_data (ignore-errors (uiop:run-program "wttr" :output :string)))
  (write (string-trim '(#\Newline) wttr_data)))

;;; show ethernet ip in mode-line
(defcommand swm-ether-mode () ()
  "show ethernet ip in mode-line"
  (defparameter ip_data (ignore-errors (uiop:run-program "ether" :output :string)))
  (write (string-trim '(#\Newline) ip_data)))
