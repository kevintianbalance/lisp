
;; ;; 
;; (load "auctex.el" nil t t)
;; (require 'tex-mik)


;; 2012_05_28
;; (setq org-export-exclude-tags UNEXPORT)


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; epresent
;; (setq load-path (append load-path (list "~/elisp/eschulte-epresent-44c3870/")))
;; (require 'epresent)


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; w3m
;; ;; 2012_05_07
;; ;; (setq load-path (append load-path (list "~/elisp/emacs-w3m-1.4.4/")))
;; (setq load-path (append load-path (list "~/elisp/emacs-w3m-dev/")))
;; (require 'w3m-load)
;; (require 'w3m)
;; ;; (require 'mime-w3m)

;; ;; (setq w3m-command-arguments
;; ;; 			(nconc w3m-command-arguments
;; ;; 						 '("-o" "http_proxy=http://iproxy-sh.cn.ao.ericsson.se:8080/")))


;; (setq w3m-command-arguments
;; 			(nconc w3m-command-arguments
;; 						 '("-o" "http_proxy=http://www-proxy.ericsson.se:8080/")))

;; ;; ;; could not use
;; ;; (setq w3m-command-arguments
;; ;; 			(nconc w3m-command-arguments
;; ;; 						 '("-o" "http_proxy=http://127.0.0.1:8087/")))



;; (setq w3m-home-page "http://www.google.com.hk")

;; (setq w3m-default-display-inline-images nil)

;; ;; Inline images?
;; (setq mm-attachment-override-types '("image/.*"))

;; ;; Or, like this:
;; ;; (add-to-list 'mm-attachment-override-types "image/.*")

;; ;; If there is a text alternative to an HTML message, you might want Gnus to show the text instead of starting a browser:

;; ;; No HTML mail
;; (setq mm-discouraged-alternatives '("text/html" "text/richtext"))

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; Predictive Setup
;; ;; 2012_05_04
;; ;; delete, could not work with windows
;; ;; Error: dictree-load: Wrong number of arguments: called-interactively-p, 1
;; ;; Error For Make: Makefile:160: recipe for target `latex/dict-latex-bibstyle.elc' failed


;; ;; (add-to-list 'load-path "~/.emacs.d/predictive")
;; ;; (add-to-list 'load-path "~/.emacs.d/predictive/latex")
;; ;; (add-to-list 'load-path "~/.emacs.d/predictive/html")
;; ;; (add-to-list 'load-path "~/.emacs.d/predictive/texinfo")

;; ;; (require 'predictive)

;; ;; start on command predictive-mode, to save memory
;; ;; (autoload 'predictive-mode "~/.emacs.d/predictive/predictive"
;; ;;   "Turn on Predictive Completion Mode." t)


;; ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; ;; GIT Configuration One
;; ;; (add-to-list 'load-path "~/elisp/git")

;; ;; (require 'vc-git)
;; ;; (require 'git)
;; ;; (require 'git-blame)
;; ;; (require 'git-emacs)

;; ;; (add-to-list 'vc-handled-backends 'Git)


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; GIT Configuration Two
;; (add-to-list 'load-path "~/elisp/git-emacs")

;; (require 'git-emacs)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; Emacs macro to add a pomodoro item
;; ;; http://theadmin.org/articles/pomodoro-emacs-with-orgmod/e
;; (fset 'pomodoro
;; 			"[ ]")
 
;; ;; Emacs macro to add a pomodoro table
;; ;;
;; ;; | G | Organization | [ ] |
;; ;; |   |              |     |
;; (fset 'pomodoro-table
;; 			[?| ?  ?G ?  ?| ?  ?O ?r ?g ?a ?n ?i ?z ?a ?t ?i ?o ?n ?  ?| ?  ?\[ ?  ?\] ?  ?| tab])



;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; http://www.emacswiki.org/emacs/quick-jump.el
;; ;; ~/elisp/quick-jump.el
;; ;;
;; ;; (require 'quick-jump)
;; ;; (quick-jump-default-keybinding)


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; 2013_03_04
;; ;; http://emacsmode.googlecode.com/svn/trunk/person/cngump/.emacs.d/load-path/recent-jump.el
;; ;; sometimes, we start a big jump, e.g. go to the beginning of buffer, search,
;; ;; page down etc, it is handy that you can go back to where you start. For
;; ;; example, when we writing program source code, we ofter search for some
;; ;; reference and go back to where you start and continue writing. But how can we
;; ;; define "Big Jump". I can not find a proper hook for the big jump, so at last
;; ;; I choose the pre-command-hook. Now what my defination for "Big Jump" is :
;; ;; 
;; ;; 1. you issued some special command, it can be defined by
;; ;; recent-jump-hook-commands 
;; ;;
;; ;; 2. you jumped really much. that is you move more than `recent-jump-threshold'
;; ;; lines.
;; ;;
;; ;; C-o is binded for open-lines, I not used to very often, and VI bind C-o for
;; ;; go to old point, so it is a good idea to bind "C-o" for jumping back where
;; ;; you start. and "M-o" is suitable for jump forward, i.e. undo the jumping back.
;; ;;
;; ;; sample configuration
;; (setq recent-jump-threshold 4)
;; (setq recent-jump-ring-length 10)
;; ;; TODO bind new key
;; ;; (global-set-key (kbd "C-o") 'recent-jump-jump-backward)
;; ;; (global-set-key (kbd "M-o") 'recent-jump-jump-forward)
;; (require 'recent-jump)

(setq current-language-environment 'English)
