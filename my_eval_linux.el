;;;;;;;;;;;;;;;;;;;;
;; highlight-symbol
(add-to-list 'load-path "~/elisp/")
(require 'highlight-symbol)


;;;;;;;;;;;;;;;;;;;;
;; start server
;; 2012_09_06 defualt not start
;; (server-start)

;;;;;;;;;;;;;;;;;;;;
;; stop cursor blinking
; (blink-cursor-mode 1) ; blinking
(blink-cursor-mode -1) ; not blinking

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; multi-term 2010_08_27
;; !! do not work in ubuntu server !!
;; (add-to-list 'load-path "~/elisp/")
;; (require 'multi-term)
;; (setq multi-term-program "/bin/bash")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; news server
;; 2010_09_03 could not access
;; (setq gnus-select-method '(nntp "nntp.perl.org"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; my micro
(fset 'ktransdifffile
   "\C-[xreplace-regx\C-?ex\C-i\C-m\\(.*@@.*\\\C-?/\\)\\([0-9]*\\)\C-mk\C-?diff -U20 \\10 \\1\\2 >> $1\C-m")


;; 2015_11_09_111509
;; https://github.com/emacs-helm/helm/wiki
;; Configure helm
;; ;; Kevin: not compatible with emacs23
;; (setq load-path (append load-path (list "~/.emacs.d/cl-lib")))
;; (require 'cl-lib)
;; (setq load-path (append load-path (list "~/elisp/helm")))
;; (setq load-path (append load-path (list "~/elisp/emacs-async")))
;; (require 'helm)
;; (require 'helm-config)
;; (global-set-key (kbd "C-c h") 'helm-command-prefix)
;; (global-unset-key (kbd "C-x c"))
;; (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
;; (define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
;; (define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z
;; (helm-mode 1)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Visible Bookmarks
;; https://github.com/joodland/bm
;; 2013_12_24_094208
(add-to-list 'load-path "~/elisp/bm-master/")
(require 'bm)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Visible Bookmarks
;; https://github.com/joodland/bm
;; 2013_12_24_094208
;; Keep same with [[file:my_cedet.el::(enable-visual-studio-bookmarks)]]
(global-set-key [f2] 'bm-toggle)
;; (global-set-key (kbd "<C-f2>") 'bm-next)
;; Putty transfer control f2 to:
;; "M-[1;5q" is undefined
(global-set-key "\M-[1;5q" 'bm-next)
;; (global-set-key (kbd "<S-f2>") 'bm-previous)
(global-set-key "\C-cn" 'bm-next)
(global-set-key "\C-cp" 'bm-previous)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; cflow
;; can only support on file!
(setq load-path (append load-path (list "~/elisp/cflow-1.5/elisp")))
(load "cflow-mode")
(autoload 'cflow-mode "cflow-mode")
(setq auto-mode-alist (append auto-mode-alist
                             '(("\\.cflow$" . cflow-mode))))

(require 'cflow-mode)
(defvar cmd nil nil)
(defvar cflow-buf nil nil)
(defvar cflow-buf-name nil nil)

(defun yyc/cflow-function (function-name)
  "Get call graph of inputed function. "
  (interactive "sFunction name:\n")
  ;(interactive (list (car (senator-jump-interactive "Function name: "
  ;                                                  nil nil nil))))
  (setq cmd (format "cflow  -b --main=%s %s" function-name buffer-file-name))
  (setq cflow-buf-name (format "**cflow-%s:%s**"
                               (file-name-nondirectory buffer-file-name)
                               function-name))
  (setq cflow-buf (get-buffer-create cflow-buf-name))
  (set-buffer cflow-buf)
  (setq buffer-read-only nil)
  (erase-buffer)
  (insert (shell-command-to-string cmd))
  (pop-to-buffer cflow-buf)
  (goto-char (point-min))
  (cflow-mode)
  )

;; mobaxterm backspace problem emacs
(global-set-key [(control ?h)] 'delete-backward-char)
