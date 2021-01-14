;; -*- lisp -*-
;;
;; stumpwm config

;; ref: https://github.com/alezost/stumpwm-config
;; ref: https://github.com/equwal/stumpwm-init
;; ref: https://github.com/tpine/.stumpwm.d
;; ref: https://github.com/herbertjones/my-stumpwm-config

(in-package :stumpwm)

(push #p"~/.config/emacs/site-lisp/sly/slynk/" asdf:*central-registry*)
(asdf:load-system :slynk)
(slynk:create-server :port 4008 :dont-close t)

(defvar my/config-path
  (directory-namestring
   (truename (merge-pathnames ".stumpwmrc" (user-homedir-pathname))))
  "A directory with initially loaded files.")

(defun my/load-conf (filename)
  "Load a file FILENAME (without extension) from `my/config-path'."
  (let ((file (merge-pathnames (concatenate 'string filename ".lisp")
			       my/config-path)))
    (if (probe-file file)
	(load file)
	(format *error-output* "File '~a' doesn't exist." file))))

(my/load-conf "clean")
;; (my/load-conf "defaults")
(my/load-conf "app")
(my/load-conf "keybinds")
;; (my/load-conf "mode-line")
