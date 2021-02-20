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
  "Run firefox"
  (run-or-raise "firefox" '(:class "Firefox")))

(defcommand slock () ()
  "Lock session."
  (run-shell-command "slock"))
