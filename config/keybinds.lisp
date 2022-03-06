;; -*- lisp -*-

(in-package :stumpwm)

(set-prefix-key (kbd "s-p"))

;; Run
(define-key *top-map* (kbd "s-r") "eval")
(define-key *top-map* (kbd "s-R") "colon")

;; Program
(define-key *root-map* (kbd "s-e") "run-emacsclient")
(define-key *root-map* (kbd "s-t") "run-mlterm")
(define-key *root-map* (kbd "s-T") "ec-telega")
(define-key *root-map* (kbd "s-f") "run-firefox")
(define-key *root-map* (kbd "s-r") "exec")

;; Frame Splitting
(define-key *root-map* (kbd "0") "remove")
(define-key *root-map* (kbd "1") "only")
(define-key *root-map* (kbd "2") "vsplit")
(define-key *root-map* (kbd "3") "hsplit")

;; Frame switch
(define-key *root-map* (kbd "o") "fnext")

;; Select frame by windowlist
(define-key *root-map* (kbd "w") "windowlist")
(define-key *root-map* (kbd "W") "pull-from-windowlist")

;; Switch Screen
(defcommand user-switch-to-screen (screen-num) ((:number "Screen Number: "))
  "Only works when there is a current open window on the screen."
  (select-window-by-number (window-number
			    (car (head-windows
				  (current-group)
				  (nth screen-num
				       (group-heads (current-group)))))))
  (group-wake-up (current-group)))

(define-key *root-map* (kbd "F1") "user-switch-to-screen 2")
(define-key *root-map* (kbd "F2") "user-switch-to-screen 1")
(define-key *root-map* (kbd "F3") "user-switch-to-screen 0")

;; Refresh heads
(define-key *root-map* (kbd "F5") "refresh-heads")

;; Lock session
(define-key *root-map* (kbd "L") "slock")
