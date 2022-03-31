;; -*- lisp -*-

(in-package :stumpwm)

(defcommand run-emacsclient () ()
  "Run emacsclient."
  (run-shell-command "emacsclient -a '' -c"))

(defcommand ec-term () ()
  "emacsclient + ansi-term."
  (run-shell-command "emacsclient -a '' -c --eval '(if (get-buffer \"*ansi-term*\")
                                                      (switch-to-buffer \"*ansi-term*\")
                                                     (ansi-term \"/bin/zsh\"))'"))

(defcommand ec-telega () ()
  "emacsclient + telega."
  (run-shell-command "emacsclient -a '' -c --eval '(if (get-buffer \"*Telega Root*\")
                                                      (switch-to-buffer \"*Telega Root*\")
                                                     (telega))'"))

(defcommand run-firefox () ()
  "Run firefox."
  (run-or-raise "firefox" '(:class "Firefox")))

(defcommand run-term () ()
  "Run Term."
  (run-shell-command "alacritty"))

(defcommand slock () ()
  "Lock session."
  (run-shell-command "slock"))

(defcommand run-xrandr-hdmi (&optional (initial "")) ()
  "xrandr HDMI."
  (let ((op (read-one-line (current-screen) "op: " :initial-input initial))
	(cmd "xrandr") (pri-name *eDP-name*) (sec-name *HDMI-name*))
    (cond ((string= op "l") (setq cmd (concatenate 'string cmd
						" --output " sec-name
						" --left-of " pri-name " --auto")))
	  ((string= op "r") (setq cmd (concatenate 'string cmd
					        " --output " sec-name
						" --right-of " pri-name " --auto")))
	  ((string= op "+") (setq cmd (concatenate 'string cmd
					        " --output " sec-name
						" --rotate right")))
	  ((string= op "-") (setq cmd (concatenate 'string cmd
						" --output " sec-name
						" --rotate left")))
	  (t (setq cmd (concatenate 'string cmd
				    " --output " sec-name " --off"))))
    (run-shell-command cmd)))
