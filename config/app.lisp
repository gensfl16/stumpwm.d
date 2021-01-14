;; -*- lisp -*-

(in-package :stumpwm)

(defcommand run-emacs () ()
  "Emacs"
  (run-or-raise "emacs" '(:class "Emacs")))

(defcommand run-firefox () ()
  "Firefox"
  (run-or-raise "firefox" '(:class "Firefox")))
