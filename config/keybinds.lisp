;; -*- lisp -*-

(in-package :stumpwm)

(set-prefix-key (kbd "s-p"))

(define-key *root-map* (kbd "s-e") "run-emacs")
(define-key *root-map* (kbd "s-f") "run-firefox")
