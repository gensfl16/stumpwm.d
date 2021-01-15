;; -*-lisp-*-

(in-package :stumpwm)

(clear-window-placement-rules)

(remove-all-hooks *new-window-hook*)
(remove-all-hooks *focus-group-hook*)
(remove-all-hooks *focus-window-hook*)
(remove-all-hooks *focus-frame-hook*)
(remove-all-hooks *split-frame-hook*)
(remove-all-hooks *remove-split-hook*)
