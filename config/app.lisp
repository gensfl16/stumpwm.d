;; -*- lisp -*-

(in-package :stumpwm)

(defcommand run-emacs () ()
  "Run emacs"
  (run-or-raise "emacs" '(:class "Emacs")))

(defcommand run-firefox () ()
  "Run firefox"
  (run-or-raise "firefox" '(:class "Firefox")))

(defcommand slock () ()
  "Lock session."
  (run-shell-command "slock"))
