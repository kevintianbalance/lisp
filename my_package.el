(require 'package)


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Not Work
;; ;; Add the original Emacs Lisp Package Archive
;; (add-to-list 'package-archives
;;              '("elpa" . "http://tromey.com/elpa/"))

;; ;; Add the user-contributed repository
;; (add-to-list 'package-archives
;;              '("marmalade" . "http://marmalade-repo.org/packages/"))

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; magit install
;; (add-to-list 'package-archives
;; 						 '("marmalade" . "http://marmalade-repo.org/packages/") t)

(setq url-proxy-services '(("no_proxy" . "^\\(localhost\\)")
                           ("http" . "www-proxy.ericsson.se:8080")))

;; Add the original Emacs Lisp Package Archive
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages"))

;; by Johan, for HELM
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  (add-to-list 'package-archives
               '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)


