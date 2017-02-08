
;;;;;;;;;;;;Add session;;;;;;;;;;;;;;;;;
;; The position of the last change. A new command (bound to C-x C-/) 
;; can be used to jump to that position. 
(add-to-list 'load-path "~/session/lisp")
(require 'session)
(add-hook 'after-init-hook 'session-initialize)

