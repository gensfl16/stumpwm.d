;; -*- lisp -*-

(in-package :stumpwm)

(defcommand run-emacsclient () ()
  "Run emacsclient."
  (run-shell-command "emacsclient -a '' -c"))

(defcommand run-firefox () ()
  "Run firefox"
  (run-or-raise "firefox" '(:class "Firefox")))

(defcommand slock () ()
  "Lock session."
  (run-shell-command "slock"))
