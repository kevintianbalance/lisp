
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;2009_06_08 set emms & mpg123
;; emms: M-x emms-xxx
;; mpg123: M-x mpg123
(setq load-path (append load-path (list "~/elisp/emms-3.0/")))
(require 'emms-setup)
(emms-standard)
(emms-default-players)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; mpg123 mode configuration.
;; ;;; Kevin: mpg123 good use,  which can not pause. & blank path is not support
;; Kevin: Not use it now 2009_06_09
(require 'mpg123)

;; ;; set mpg123 to used in emms
;; Kevin: Can use mpg123 in emms, but blank path is not support, deject it! 2009_06_09
(setq emms-player-mpg321-command-name "mpg123"
	  ;; Kevin: smplayer can not work well, it can only call the program, but not open the file
	  ;;	  emms-player-mplayer-command-name "smplayer"
	  ;;emms-player-mplayer-parameters '("-slave") ; slave mode
      emms-player-list '(emms-player-mplayer
                         emms-player-mplayer-playlist
						 emms-player-mpg321)
	  emms-source-list '((emms-directory-tree (concat MY_PATH_ROOT "/Music")))
)


;; 2011_06_02
;; 设定 mplayer 支持的格式
;; (emms-player-set emms-player-mplayer 'regex
;;                  "\\.ogg\\|\\.mp3\\|\\.wav\\|\\.mpg\\|\\.mpeg\\|\\.wmv\\|\\.wma\\|\\.mov\\|\\.avi\\|\\.divx\\|\\.ogm\\|\\.asf\\|\\.mkv\\|http://\\|mms://\\|\\.rm\\|\\.rmvb\\|\\.mp4\\|\\.flac\\|\\.vob\\|\\.m4a\\|\\.ape\\|\\.mpc")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; FTP setting
(setq ange-ftp-ftp-program-name "myftp")

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; Appt setting
(require 'appt)
;; (setq appt-issue-message t) ;; È·ÈÏ´ò¿ªÁËÔ¼»áÌáÐÑ¹¦ÄÜ
;; my_eval.el:42:7:Warning: `appt-issue-message' is an obsolete variable (as of
;;                                                                           Emacs 22.1) ; use the function `appt-activate', and the variable
;; `appt-display-format' instead.
;; change to:
;; (setq appt-activate t) ;; È·ÈÏ´ò¿ªÁËÔ¼»áÌáÐÑ¹¦ÄÜ

;;(setq appt-message-warning-time 17)
;(appt-activate 1)
(appt-activate t)

(add-hook 'diary-hook 'appt-make-list)

(custom-set-variables
 '(appt-delete-window-function (quote appt-delete-window))
 '(appt-display-duration 10 nil nil "originally is 10")
 '(appt-display-interval 2 nil nil "orig is 10")
 '(appt-display-mode-line t)
 '(appt-message-warning-time 10 nil nil "orig is 17"))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Time Zone Setting
(setq calendar-time-zone 480)
;; (setq calendar-standard-time-zone-name "CST")
;; (setq calendar-daylight-time-zone-name "CDT")

;; (setq locale-coding-system 'chinese-iso-8bit) 

;; (set-language-environment 'Chinese-GB)
;; (set-keyboard-coding-system 'euc-cn)
;; (set-clipboard-coding-system 'euc-cn)
;; (set-terminal-coding-system 'euc-cn)
;; (set-buffer-file-coding-system 'euc-cn)
;; (set-selection-coding-system 'euc-cn)
;; (modify-coding-system-alist 'process "*" 'euc-cn)
;; (setq default-process-coding-system
;; '(euc-cn . euc-cn))
;; (setq-default pathname-coding-system 'euc-cn)
;; (setq locale-coding-system 'euc-cn) 


;; 2009_06_08
(setq bbdb-file "~/.emacs.d/.bbdb")
;;【bbdb】一个很好用的地址簿，保存你的联系人信息。

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Emacs的Complete Anything模式
(setq load-path (append load-path (list "~/elisp/company-0.4.3/")))
(autoload 'company-mode "company" nil t)
;; 使用的时候，非常的简单，用命令M-x company-mode可以激活company补全模式，在你输入了几个字母后，Company会自动进行补全，用M-n和M-p命令可以进行上下选择。


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 让Emacs保存你退出文件时的当前位置
(require 'saveplace)
(setq-default save-place t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 让Emacs自动打开本次退出时已经打开的文件
(desktop-save-mode 1)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(auto-image-file-mode t)




;; save delay may caused by this:
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; auto compile *.el, can only recompile .emacs.el
;;         (add-hook 'after-save-hook 
;;                 (lambda () 
;;                         (mapcar 
;;                         (lambda (file) 
;;                         (setq file (expand-file-name file)) 
;;                         (when (string= file (buffer-file-name)) 
;;                                 (save-excursion (byte-compile-file file)))) 
;;                         '("~/.emacs" "~/.gnus.el" "~/.wl")))) 

;;;;;;;;;;;;;;;;;;;;
;; highlight-symbol
(add-to-list 'load-path "~/elisp/")
(require 'highlight-symbol)


;;;;;;;;;;;;;;;;;;;;
;; start server
(server-start)

;;;;;;;;;;;;;;;;;;;;
;; stop cursor blinking
; (blink-cursor-mode 1) ; blinking
(blink-cursor-mode -1) ; not blinking

;;;;;;;;;;;;;;;;;;;;
;; set-mark-command-repeat-pop to non-nil
(setq mark-command-repeat-pop t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; multi-term, //Kevin Tian: conflict with windows
(add-to-list 'load-path "~/elisp/")
(require 'multi-term)
(setq multi-term-program (concat CYGWIN_ROOT "/bin/bash.exe"));

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; news server
;; //Kevin Tian: could not access in ENC
;; (setq gnus-select-method '(nntp "nntp.perl.org"))
;; (setq gnus-select-method '(nntp "news.software.ibm.com"))
;; (setq gnus-select-method '(nntp "msnews.microsoft.com"))

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; remember mode
;; (add-to-list 'load-path "~/elisp/remember-2.0")

;; (setq remember-annotation-functions '(org-remember-annotation))
;; (setq remember-handler-functions '(org-remember-handler))
;; (add-hook 'remember-mode-hook 'org-remember-apply-template)

;; (setq org-directory "~/orgfiles/")
;; (setq org-default-notes-file "~/.notes")
;; ;; (define-key global-map [f12] 'org-remember)


;; ;; templats on the office computer
;; ;; F is the USB drive


;; ;;  (setq org-remember-templates
;; ;;      '(("Todo" ?t "* TODO %? %^g\n %i\n " "F:/GTD/newgtd.org" "Office")
;; ;;       ("Journal" ?j "\n* %^{topic} %T \n%i%?\n" "L:journal.org")
;; ;;       ("Book" ?b "\n* %^{Book Title} %t :READING: \n%[l:/booktemp.txt]\n" 
;; ;;               "L:journal.org")
;; ;;       ("Private" ?p "\n* %^{topic} %T \n%i%?\n" "F:/gtd/privnotes.org")
;; ;;       ("Contact" ?c "\n* %^{Name} :CONTACT:\n%[l:/contemp.txt]\n" 
;; ;;                "F:/gtd/privnotes.org")
;; ;;       ))

;; ;;  Mytemplates on the  home computer    

;;  (setq org-remember-templates
;;     '(("Todo" ?t "* TODO %^{Brief Description} %^g\n%?\nAdded: %U" "~/GTD/newgtd.org" "Tasks")
;;       ("Journal"   ?j "** %^{Head Line} %U %^g\n%i%?"  "~/GTD/journal.org")
;;       ("Clipboard" ?c "** %^{Head Line} %U %^g\n%c\n%?"  "~/GTD/journal.org")
;;       ("Receipt"   ?r "** %^{BriefDesc} %U %^g\n%?"   "~/GTD/finances.org")
;;       ("Book" ?b "** %^{Book Title} %t :BOOK: \n%[~/.book_template.txt]\n" 
;;          "~/GTD/journal.org")
;;           ("Film" ?f "** %^{Film Title} %t :FILM: \n%[~/.film_template.txt]\n" 
;;          "~/GTD/journal.org")
;;       ("Daily Review" ?a "** %t :COACH: \n%[~/.daily_review.txt]\n" 
;;          "~/GTD/journal.org")
;;       ("Someday"   ?s "** %^{Someday Heading} %U\n%?\n"  "~/GTD/someday.org")
;;       ("Vocab"   ?v "** %^{Word?}\n%?\n"  "~/GTD/vocab.org")
;;      )
;;    )

;; Quick-start tramp configuration

;;    (setq tramp-default-method "ssh")
;;     C-x C-f /remotehost:filename  RET (or /method:user@remotehost:filename)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ansi-term
(defun visit-ansi-term ()
  "If we are in an *ansi-term*, rename it.
If there is no *ansi-term*, run it.
If there is one running, switch to that buffer."
  (interactive)
  (if (equal "*ansi-term*" (buffer-name))
      (call-interactively 'rename-buffer)
      (if (get-buffer "*ansi-term*")
   (switch-to-buffer "*ansi-term*")
   (ansi-term (concat CYGWIN_ROOT "\bin\bash.exe")))))
(global-set-key (kbd "<f2>") 'visit-ansi-term)


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; emacs terminal emulator
;; ;; URL: http://curiousprogrammer.wordpress.com/2009/03/19/emacs-terminal-emulator/
;; ;; Let’s get started.						;

;; ;; The #includes.							;

;; (require 'cl)
;; (require 'term)

;; ;; Connecting to a remote host and a reasonable shell-like font. 

;; (defconst sw-ssh "ssh -q -o StrictHostKeyChecking=no")
;; (defconst sw-shell-font "-*-courier new-*-r-*-*-18-*-*-*-*-*-iso8859-1")

;; ;; Somewhere to store the frame for the shell and the buffers.

;; (defvar sw-frame nil)
;; (defvar sw-buffers nil)

;; ;; Configuration variables: does the shell open in a name frame, and if the shell has exited for some reason do we keep it in the list?

;; (defvar sw-open-in-new-frame nil)
;; (defvar sw-remove-dead-terms t)

;; ;; I like to build my software in layers. The lowest layer is the most primitive and provides functions to get processes if they exist and to kill buffers that don’t have a process.

;; (defun sw-shell-get-process (buffer-name)
;;   (let ((buffer (get-buffer (concat "*" buffer-name "*"))))
;;     (and (buffer-live-p buffer) (get-buffer-process buffer))))

;; (defun sw-get-process-if-live (buffer-name)
;;   (let ((proc (sw-shell-get-process buffer-name)))
;;     (and (processp proc)
;;          (equal (process-status proc) 'run)
;;          proc)))

;; (defun sw-kill-buffer-if-no-process (buffer-name)
;;   (let* ((buffer (get-buffer (concat "*" buffer-name "*")))
;;          (proc (sw-get-process-if-live buffer-name)))
;;     (when (and (not proc) (buffer-live-p buffer)) (kill-buffer buffer))))

;; (defalias 'sw-shell-exists-p 'sw-get-process-if-live)

;; ;; The next layer provides two functions for wrapping basic buffer selection/creation. The plan is to ensure that there is a shell running in the buffer when the function finishes, but we don’t kill it if it exists already. Then there is another function that allows us to create or select a shell and send commands to it.

;;  sw-basic-shell (buffer-name)
;;   (sw-kill-buffer-if-no-process buffer-name)
;;   ;; If there is a process running, leave it, otherwise
;;   ;; create the new buffer
;;   (if (sw-shell-exists-p buffer-name)
;;       (message "Buffer already exists")
;;     (ansi-term "bash" buffer-name))
;;   (switch-to-buffer (concat "*" buffer-name "*")))

;; (defun sw-shell/commands (buffer-name &rest commands)
;;   (sw-basic-shell buffer-name)
;;   (let ((proc (sw-shell-get-process buffer-name)))
;;     (dolist (cmd commands)
;;       (term-simple-send proc cmd))))

;; ;; This layer has methods for creating my standard shell locally (sw-standard-shell) and remotely (sw-server-login). I generally need to exec bash -l and su - after I’ve logged in. I could have done this in the .bashrc of course. You can adapt these start-up commands for your own usage.

;; (defun sw-standard-shell (buffer-name)
;;   (if (sw-shell-exists-p buffer-name)
;;       (switch-to-buffer (concat "*" buffer-name "*"))
;;     (sw-shell/commands buffer-name
;;                        "exec bash -l"
;;                        "su -")))

;; (defun sw-server-login (host &optional buffer-name)
;;   (setq buffer-name (or buffer-name host))
;;   (if (sw-shell-exists-p buffer-name)
;;       (switch-to-buffer (concat "*" buffer-name "*"))
;;     (sw-shell/commands buffer-name
;;                        (concat sw-ssh " " host)
;;                        "exec bash -l"
;;                        "su -")))

;; ;; Set up my preferred colors and fonts.

;; (defun sw-set-display ()
;;   (interactive)
;;   (set-background-color "black")
;;   (set-foreground-color "orange")
;;   (set-frame-font sw-shell-font))

;; ;; I need to override a few keys. This should all be fairly obvious.

;; (defun sw-set-keymap ()
;;   (term-set-escape-char ?\C-z)
;;   (define-key term-raw-map "\C-c" 'term-interrupt-subjob)
;;   (define-key term-raw-map "\C-y" 'yank)
;;   (define-key term-raw-map (kbd "\M-x") 'execute-extended-command)
;;   (define-key term-raw-map "\e" 'term-send-raw)
;;   (define-key term-raw-map (kbd "") 'scroll-down)
;;   (define-key term-raw-map (kbd "") 'scroll-up))

;; (sw-set-keymap)

;; ;; I like highlighted regions to be automatically copied and to paste with the right-hand mouse button. This more-or-less works although it would need some tweaking to get it to send exactly the command you see on the screen.

;; ;; Functions to get the mouse working more-or-less as I like it

;; (defun sw-mouse-paste-clipboard (click arg)
;;   (interactive "e\nP")
;;   (let ((proc (get-buffer-process (current-buffer))))
;;     (term-send-string proc (current-kill 0)))
;;   (setq deactivate-mark t))

;; (defun sw-mouse-copy-region-to-clipboard (click)
;;   (interactive "e")
;;   (mouse-set-region click)
;;   (let ((transient-mark-mode nil))
;;     (copy-region-as-kill (region-beginning) (region-end))))

;; (define-key term-raw-map
;;   [drag-mouse-1]
;;   'sw-mouse-copy-region-to-clipboard)

;; (define-key term-raw-map [mouse-3] 'sw-mouse-paste-clipboard)

;; ;; Functions to read a buffer name from the user and select the shell-specific frame if we’ve set sw-open-in-new-frame.

;; (defun sw-read-buffer-name ()
;;   (when sw-remove-dead-terms
;;     ;; Remove dead terms before offering them to the user
;;     (setq sw-buffers (delete-if-not 'sw-shell-exists-p sw-buffers)))
;;   (let ((buffer-name
;;          (ido-completing-read
;;           "Choose buffer name: "
;;           sw-buffers)))

;;     (if (stringp buffer-name)
;;         buffer-name
;;       (error "Invalid buffer name"))))

;; (defun sw-get-buffer-proc ()
;;   (sw-get-process-if-live (sw-read-buffer-name)))

;; (defun sw-select-frame ()
;;   (if (not sw-open-in-new-frame)
;;       (sw-set-display)
;;     (unless (frame-live-p sw-frame)
;;       (setq sw-frame (make-frame))
;;       (select-frame-set-input-focus sw-frame)
;;       (sw-set-display))
;;     (select-frame-set-input-focus sw-frame)))

;; ;; This actually selects the buffer, reading the buffer-name from the user if necessary.

;; (defun sw-choose-buffer (&optional buffer-name)
;;   (sw-select-frame)

;;   (unless (stringp buffer-name)
;;     (setq buffer-name (sw-read-buffer-name)))

;;   (unless (sw-shell-exists-p buffer-name)
;;     (sw-kill-buffer-if-no-process buffer-name)
;;     (setq sw-buffers (delete buffer-name sw-buffers)))

;;   (let ((already-existed t))
;;     (if (member buffer-name sw-buffers)
;;         (switch-to-buffer (concat "*" buffer-name "*"))
;;       (setq already-existed nil)
;;       (push buffer-name sw-buffers))

;;     (list buffer-name already-existed)))

;; ;; And these are the top level commands – sw-open-shell and sw-open-remote-shell. They build on sw-standard-shell and sw-server-login respectively but read a buffer name and remote server name as appropriate.

;; (defun sw-open-shell (&optional buffer-name)
;;   (interactive)
;;   (multiple-value-bind (buffer-name already-existed)
;;       (sw-choose-buffer buffer-name)
;;     (unless already-existed
;;       (sw-standard-shell buffer-name))))

;; (defun sw-open-remote-shell (&optional buffer-name server-name)
;;   (interactive)
;;   (multiple-value-bind (buffer-name already-existed)
;;       (sw-choose-buffer buffer-name)
;;     (unless already-existed
;;       (unless (stringp server-name)
;;         (setq server-name (read-string "Server: " buffer-name)))
;;       (sw-server-login server-name buffer-name))))

;; (provide 'shell-wrappers)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 2010_11_29 
;; | icomplete-mode                           |                                       | Offer completions for buffers, commands, etc.                                                                              |            |
;; | iswitchb-mode                            |                                       | Show all buffer names during C-x b                                                                                         |            |

(icomplete-mode)
(iswitchb-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 2011_03_10
;; ido-mode
;; delete for public sharing

  (setq ido-enable-flex-matching t)
  (setq ido-everywhere t)
  (ido-mode 1)

(setq ido-use-filename-at-point 'guess)

(setq ido-create-new-buffer 'always)
;; You can customize the order in which files are sorted when Ido displays them in the minibuffer. There are certain file extensions I use more than others, so I tell Ido to emphasize those.

(setq ido-file-extensions-order '(".org" ".txt" ".py" ".emacs" ".xml" ".el" ".ini" ".cfg" ".cnf"))

(setq ido-ignore-extensions t)

(setq ido-enable-flex-matching t)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 2011_03_10
;; lusty explorer
;; del, for ido-mode replace it.
;; (when (require 'lusty-explorer nil 'noerror)

;;   ;; overrride the normal file-opening, buffer switching
;;   (global-set-key (kbd "C-x C-f") 'lusty-file-explorer)
;;   (global-set-key (kbd "C-x b")   'lusty-buffer-explorer))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 2011_03_10
(global-auto-revert-mode 1)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 2011_03_11
;; advice, make ispell more smart
(defadvice ispell-command-loop (before ispell-reverse-miss-list activate)
"reverse the first argument to ispell-command-loop"
(ad-set-arg 0 (reverse (ad-get-arg 0))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 2011_03_11
;; show-file-name()
;; copy-full-path-to-kill-ring()
;; :@@@@@@:
(defun show-file-name ()
  "Show the full path file name in the minibuffer."
  (interactive)
  (message (buffer-file-name))
  (kill-new (file-truename buffer-file-name))
)
;; (global-set-key "\C-cz" 'show-file-name)


(defun copy-full-path-to-kill-ring ()
  "copy buffer's full path to kill ring"
  (interactive)
  (when buffer-file-name
    (kill-new (file-truename buffer-file-name))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 2011_03_11
;; uniquify
;; Emacs Tip #11: uniquify
;; Do you dislike the buffer names Emacs generates when two files have
;; the same name? e.g. "myfile.txt" and "myfile.txt<2>"
;; A package 'uniquify' changes the default naming of buffers to include
;; parts of the file name (directory names) until the buffer names are
;; unique.
;; For instance, buffers visiting the files:
;; /u/mernst/tmp/Makefile
;; /usr/projects/zaphod/Makefile
;; would be named
;; Makefile|tmp
;; Makefile|zaphod
;; respectively (instead of "Makefile" and "Makefile<2>").
;; There are other naming schemes possible.
;; I use this to my .emacs:
(require 'uniquify)
(setq uniquify-buffer-name-style 'reverse)
(setq uniquify-separator "/")
(setq uniquify-after-kill-buffer-p t) ; rename
;; after killing uniquified
(setq uniquify-ignore-buffers-re "^\\*") ; don't
;; muck with special buffers
;; For the *info* page,
;; C-h i m emacs RET s uniquify RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 2011_03_11
;; If you don't like having lines of code/text with whitespace at the
;; ends, you can turn on the variable 'show-trailing-whitespace' to have
;; Emacs highlight the offending whitespace.
;; When set, the variable's value becomes buffer local, so set it to true
;; in the mode-hooks for your preferred modes. Or, if you want it on all
;; the time, change the default value with:
;; 2011_03_11 not show, only show when needed.
;; (setq-default show-trailing-whitespace t)
(setq-default show-trailing-whitespace nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; browse-kill-ring
;; :@@@@@:
;; Emacs Tip #13: browse-kill-ring
;; The kill-ring. You know about the kill-ring, right?
;; C-h i m emacs RET kill ring RET
;; Ok, now you know about the kill-ring, it is basically a list of all the
;; chunks of text that have been cut (C-w) (or just saved using M-w). The
;; basic interaction with the kill-ring is:
;; C-y (aka "yank" aka "paste")
;; After you've pasted text, if you didn't want that, but an earlier chunk of
;; text, the key M-y will cycle through the earlier chunks, replacing what
;; was just pasted with the earlier text.
;; If that's too much for you to handle, you can browse the entries in the
;; kill-ring and paste them in (more than one if you want).
;; To get it, you can download browse-kill-ring.el, and you can also check
;; out the project home page.
;; To install and use, do the standard download, load-path manipulation,
;; and:
(require 'browse-kill-ring)
;; M-x browse-kill-ring

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Emacs Tip #15: indent yanked code
;; I'm a bit apprehensive about this chunk of code, mainly because it
;; facilitates cut/paste coding, which I abhor. Nevertheless, it does come
;; in handy.
;; When you (shudder) cut/paste code, one of the first things you do is
;; immediately indent the code appropriately. Well, why not have that
;; done automatically for you? This chunk of emacs lisp does the trick
;; rather nicely.
;; It will not indent regions that are too large (see yank-advisedindent-
;; threshold) and given a prefix argument, it will not indent.

;; ;; automatically indenting yanked text if in
;; programming-modes
(defvar yank-indent-modes '(emacs-lisp-mode
c-mode c++-mode
tcl-mode sql-mode
perl-mode cperl-mode
java-mode jde-mode
lisp-interaction-mode
LaTeX-mode TeX-mode)
"Modes in which to indent regions that are yanked
(or yank-popped)")
(defvar yank-advised-indent-threshold 1000
"Threshold (# chars) over which indentation does not
automatically occur.")
(defun yank-advised-indent-function (beg end)
"Do indentation, as long as the region isn't too
large."
(if (<= (- end beg) yank-advised-indent-threshold)
(indent-region beg end nil)))
(defadvice yank (after yank-indent activate)
"If current mode is one of 'yank-indent-modes,
indent yanked text (with prefix arg don't indent)."
(if (and (not (ad-get-arg 0))
(member major-mode yank-indent-modes))
(let ((transient-mark-mode nil))
(yank-advised-indent-function (region-beginning)
(region-end)))))
(defadvice yank-pop (after yank-pop-indent activate)
"If current mode is one of 'yank-indent-modes,
indent yanked text (with prefix arg don't indent)."
(if (and (not (ad-get-arg 0))
(member major-mode yank-indent-modes))
(let ((transient-mark-mode nil))
(yank-advised-indent-function (region-beginning)
(region-end)))))




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(set-terminal-coding-system 'utf-8-dos) 

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; smart tabs
;; ;; 2011_08_08
;; ;; add by kevin tian
;; 
;; ;; not worked for setting the value
;; ;; (setq-default tab-width 4)
;; ;; (setq-default standard-indent 4)
;; ;; (setq c-basic-offset 4)

;; ;; Error: when set tab-width c mode will not disable tab
;; ;; (setq-default tab-width 2)

;; (setq-default standard-indent 2)
;; (setq c-basic-offset 2)
;; ;;Make sure spaces are used when indenting code
;; (setq indent-tabs-mode nil)
;; 
;; ;; (setq-default c-tab-always-indent nil)
;; ;; (setq-default c-syntactic-indentation nil)
;; ;; (setq-default indent-tabs-mode nil)
;; 
;; 
;; 
;; (setq load-path (append load-path (list "~/elisp/smarttabs/")))
;; (require 'smarttabs)
;; 
;;     (setq cua-auto-tabify-rectangles nil)
;; 
;;     (defadvice align (around smart-tabs activate)
;;       (let ((indent-tabs-mode nil)) ad-do-it))
;; 
;;     (defadvice align-regexp (around smart-tabs activate)
;;       (let ((indent-tabs-mode nil)) ad-do-it))
;; 
;;     (defadvice indent-relative (around smart-tabs activate)
;;       (let ((indent-tabs-mode nil)) ad-do-it))
;; 
;;     (defadvice indent-according-to-mode (around smart-tabs activate)
;;       (let ((indent-tabs-mode indent-tabs-mode))
;;         (if (memq indent-line-function
;;                   '(indent-relative
;;                     indent-relative-maybe))
;;             (setq indent-tabs-mode nil))
;;         ad-do-it))



;;;; open all marked files
;; in dired mode, mark file, type 'F' to open all marked files
;; 2011_08_24
(eval-after-load "dired"
  '(progn
     (define-key dired-mode-map "F" 'my-dired-find-file)
     (defun my-dired-find-file (&optional arg)
       "Open each of the marked files, or the file under the point, or when prefix arg, the next N files "
       (interactive "P")
       (let* ((fn-list (dired-get-marked-files nil arg)))
         (mapc 'find-file fn-list)))))



;; ;;;; icicles
;; 2011_09_26 delete for not support past and C-k
;; (add-to-list 'load-path "~/elisp/icicles/")
;; (require 'icicles)
;; (icy-mode 1)

;;; image view
(autoload 'thumbs "thumbs" "Preview images in a directory." t)

(add-to-list 'exec-path "~/bin/jpeg")

(add-to-list 'exec-path "~/Program/ImageMagick-6.7.6-Q16")


;; (setq image-dired-external-viewer "C:/Program Files/ACD Systems/ACDSee/12.0/ACDSeeQV12.exe")
;; (setq image-dired-external-viewer "C:/Program Files/Google/Picasa3/PicasaPhotoViewer.exe")
;; (setq image-dired-external-viewer "~/Program/PicasaPhotoViewer.exe")

;; 2012_05_08
(setq image-dired-cmd-create-temp-image-program "~/Program/ImageMagick-6.7.6-Q16/convert.exe")
(setq image-dired-cmd-create-thumbnail-program "~/Program/ImageMagick-6.7.6-Q16/convert.exe")
(setq image-dired-cmd-pngcrush-program "~/Program/ImageMagick-6.7.6-Q16/convert.exe")
(setq image-dired-cmd-pngnq-program "~/Program/ImageMagick-6.7.6-Q16/convert.exe")
(setq image-dired-cmd-rotate-original-program "~/Program/ImageMagick-6.7.6-Q16/convert.exe")
(setq image-dired-cmd-rotate-thumbnail-program "~/Program/ImageMagick-6.7.6-Q16/convert.exe")
(setq image-dired-cmd-write-exif-data-program "~/Program/ImageMagick-6.7.6-Q16/convert.exe")






;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; 让Emacs保存你退出文件时的当前位置
;; (require 'saveplace)
;; (setq-default save-place t)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; 让Emacs自动打开本次退出时已经打开的文件
;; (desktop-save-mode 1)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (auto-image-file-mode t)




;; ;; save delay may caused by this:
;; ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; ;; auto compile *.el, can only recompile .emacs.el
;; ;;         (add-hook 'after-save-hook 
;; ;;                 (lambda () 
;; ;;                         (mapcar 
;; ;;                         (lambda (file) 
;; ;;                         (setq file (expand-file-name file)) 
;; ;;                         (when (string= file (buffer-file-name)) 
;; ;;                                 (save-excursion (byte-compile-file file)))) 
;; ;;                         '("~/.emacs" "~/.gnus.el" "~/.wl")))) 

;; ;;;;;;;;;;;;;;;;;;;;
;; ;; highlight-symbol
;; (add-to-list 'load-path "~/elisp/")
;; (require 'highlight-symbol)


;; ;;;;;;;;;;;;;;;;;;;;
;; ;; start server
;; (server-start)

;; ;;;;;;;;;;;;;;;;;;;;
;; ;; stop cursor blinking
;; ; (blink-cursor-mode 1) ; blinking
;; (blink-cursor-mode -1) ; not blinking

;; ;;;;;;;;;;;;;;;;;;;;
;; ;; set-mark-command-repeat-pop to non-nil
;; (setq mark-command-repeat-pop t)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; multi-term, //Kevin Tian: conflict with windows
;; (add-to-list 'load-path "~/elisp/")
;; (require 'multi-term)
;; (setq multi-term-program (concat CYGWIN_ROOT "/bin/bash.exe"));

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; news server
;; ;; //Kevin Tian: could not access in ENC
;; ;; (setq gnus-select-method '(nntp "nntp.perl.org"))
;; ;; (setq gnus-select-method '(nntp "news.software.ibm.com"))
;; ;; (setq gnus-select-method '(nntp "msnews.microsoft.com"))

;; ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; ;; remember mode
;; ;; (add-to-list 'load-path "~/elisp/remember-2.0")

;; ;; (setq remember-annotation-functions '(org-remember-annotation))
;; ;; (setq remember-handler-functions '(org-remember-handler))
;; ;; (add-hook 'remember-mode-hook 'org-remember-apply-template)

;; ;; (setq org-directory "~/orgfiles/")
;; ;; (setq org-default-notes-file "~/.notes")
;; ;; ;; (define-key global-map [f12] 'org-remember)


;; ;; ;; templats on the office computer
;; ;; ;; F is the USB drive


;; ;; ;;  (setq org-remember-templates
;; ;; ;;      '(("Todo" ?t "* TODO %? %^g\n %i\n " "F:/GTD/newgtd.org" "Office")
;; ;; ;;       ("Journal" ?j "\n* %^{topic} %T \n%i%?\n" "L:journal.org")
;; ;; ;;       ("Book" ?b "\n* %^{Book Title} %t :READING: \n%[l:/booktemp.txt]\n" 
;; ;; ;;               "L:journal.org")
;; ;; ;;       ("Private" ?p "\n* %^{topic} %T \n%i%?\n" "F:/gtd/privnotes.org")
;; ;; ;;       ("Contact" ?c "\n* %^{Name} :CONTACT:\n%[l:/contemp.txt]\n" 
;; ;; ;;                "F:/gtd/privnotes.org")
;; ;; ;;       ))

;; ;; ;;  Mytemplates on the  home computer    

;; ;;  (setq org-remember-templates
;; ;;     '(("Todo" ?t "* TODO %^{Brief Description} %^g\n%?\nAdded: %U" "~/GTD/newgtd.org" "Tasks")
;; ;;       ("Journal"   ?j "** %^{Head Line} %U %^g\n%i%?"  "~/GTD/journal.org")
;; ;;       ("Clipboard" ?c "** %^{Head Line} %U %^g\n%c\n%?"  "~/GTD/journal.org")
;; ;;       ("Receipt"   ?r "** %^{BriefDesc} %U %^g\n%?"   "~/GTD/finances.org")
;; ;;       ("Book" ?b "** %^{Book Title} %t :BOOK: \n%[~/.book_template.txt]\n" 
;; ;;          "~/GTD/journal.org")
;; ;;           ("Film" ?f "** %^{Film Title} %t :FILM: \n%[~/.film_template.txt]\n" 
;; ;;          "~/GTD/journal.org")
;; ;;       ("Daily Review" ?a "** %t :COACH: \n%[~/.daily_review.txt]\n" 
;; ;;          "~/GTD/journal.org")
;; ;;       ("Someday"   ?s "** %^{Someday Heading} %U\n%?\n"  "~/GTD/someday.org")
;; ;;       ("Vocab"   ?v "** %^{Word?}\n%?\n"  "~/GTD/vocab.org")
;; ;;      )
;; ;;    )

;; ;; Quick-start tramp configuration

;; ;;    (setq tramp-default-method "ssh")
;; ;;     C-x C-f /remotehost:filename  RET (or /method:user@remotehost:filename)


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; ansi-term
;; (defun visit-ansi-term ()
;;   "If we are in an *ansi-term*, rename it.
;; If there is no *ansi-term*, run it.
;; If there is one running, switch to that buffer."
;;   (interactive)
;;   (if (equal "*ansi-term*" (buffer-name))
;;       (call-interactively 'rename-buffer)
;;       (if (get-buffer "*ansi-term*")
;;    (switch-to-buffer "*ansi-term*")
;;    (ansi-term (concat CYGWIN_ROOT "\bin\bash.exe")))))
;; (global-set-key (kbd "<f2>") 'visit-ansi-term)


;; ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; ;; emacs terminal emulator
;; ;; ;; URL: http://curiousprogrammer.wordpress.com/2009/03/19/emacs-terminal-emulator/
;; ;; ;; Let’s get started.						;

;; ;; ;; The #includes.							;

;; ;; (require 'cl)
;; ;; (require 'term)

;; ;; ;; Connecting to a remote host and a reasonable shell-like font. 

;; ;; (defconst sw-ssh "ssh -q -o StrictHostKeyChecking=no")
;; ;; (defconst sw-shell-font "-*-courier new-*-r-*-*-18-*-*-*-*-*-iso8859-1")

;; ;; ;; Somewhere to store the frame for the shell and the buffers.

;; ;; (defvar sw-frame nil)
;; ;; (defvar sw-buffers nil)

;; ;; ;; Configuration variables: does the shell open in a name frame, and if the shell has exited for some reason do we keep it in the list?

;; ;; (defvar sw-open-in-new-frame nil)
;; ;; (defvar sw-remove-dead-terms t)

;; ;; ;; I like to build my software in layers. The lowest layer is the most primitive and provides functions to get processes if they exist and to kill buffers that don’t have a process.

;; ;; (defun sw-shell-get-process (buffer-name)
;; ;;   (let ((buffer (get-buffer (concat "*" buffer-name "*"))))
;; ;;     (and (buffer-live-p buffer) (get-buffer-process buffer))))

;; ;; (defun sw-get-process-if-live (buffer-name)
;; ;;   (let ((proc (sw-shell-get-process buffer-name)))
;; ;;     (and (processp proc)
;; ;;          (equal (process-status proc) 'run)
;; ;;          proc)))

;; ;; (defun sw-kill-buffer-if-no-process (buffer-name)
;; ;;   (let* ((buffer (get-buffer (concat "*" buffer-name "*")))
;; ;;          (proc (sw-get-process-if-live buffer-name)))
;; ;;     (when (and (not proc) (buffer-live-p buffer)) (kill-buffer buffer))))

;; ;; (defalias 'sw-shell-exists-p 'sw-get-process-if-live)

;; ;; ;; The next layer provides two functions for wrapping basic buffer selection/creation. The plan is to ensure that there is a shell running in the buffer when the function finishes, but we don’t kill it if it exists already. Then there is another function that allows us to create or select a shell and send commands to it.

;; ;;  sw-basic-shell (buffer-name)
;; ;;   (sw-kill-buffer-if-no-process buffer-name)
;; ;;   ;; If there is a process running, leave it, otherwise
;; ;;   ;; create the new buffer
;; ;;   (if (sw-shell-exists-p buffer-name)
;; ;;       (message "Buffer already exists")
;; ;;     (ansi-term "bash" buffer-name))
;; ;;   (switch-to-buffer (concat "*" buffer-name "*")))

;; ;; (defun sw-shell/commands (buffer-name &rest commands)
;; ;;   (sw-basic-shell buffer-name)
;; ;;   (let ((proc (sw-shell-get-process buffer-name)))
;; ;;     (dolist (cmd commands)
;; ;;       (term-simple-send proc cmd))))

;; ;; ;; This layer has methods for creating my standard shell locally (sw-standard-shell) and remotely (sw-server-login). I generally need to exec bash -l and su - after I’ve logged in. I could have done this in the .bashrc of course. You can adapt these start-up commands for your own usage.

;; ;; (defun sw-standard-shell (buffer-name)
;; ;;   (if (sw-shell-exists-p buffer-name)
;; ;;       (switch-to-buffer (concat "*" buffer-name "*"))
;; ;;     (sw-shell/commands buffer-name
;; ;;                        "exec bash -l"
;; ;;                        "su -")))

;; ;; (defun sw-server-login (host &optional buffer-name)
;; ;;   (setq buffer-name (or buffer-name host))
;; ;;   (if (sw-shell-exists-p buffer-name)
;; ;;       (switch-to-buffer (concat "*" buffer-name "*"))
;; ;;     (sw-shell/commands buffer-name
;; ;;                        (concat sw-ssh " " host)
;; ;;                        "exec bash -l"
;; ;;                        "su -")))

;; ;; ;; Set up my preferred colors and fonts.

;; ;; (defun sw-set-display ()
;; ;;   (interactive)
;; ;;   (set-background-color "black")
;; ;;   (set-foreground-color "orange")
;; ;;   (set-frame-font sw-shell-font))

;; ;; ;; I need to override a few keys. This should all be fairly obvious.

;; ;; (defun sw-set-keymap ()
;; ;;   (term-set-escape-char ?\C-z)
;; ;;   (define-key term-raw-map "\C-c" 'term-interrupt-subjob)
;; ;;   (define-key term-raw-map "\C-y" 'yank)
;; ;;   (define-key term-raw-map (kbd "\M-x") 'execute-extended-command)
;; ;;   (define-key term-raw-map "\e" 'term-send-raw)
;; ;;   (define-key term-raw-map (kbd "") 'scroll-down)
;; ;;   (define-key term-raw-map (kbd "") 'scroll-up))

;; ;; (sw-set-keymap)

;; ;; ;; I like highlighted regions to be automatically copied and to paste with the right-hand mouse button. This more-or-less works although it would need some tweaking to get it to send exactly the command you see on the screen.

;; ;; ;; Functions to get the mouse working more-or-less as I like it

;; ;; (defun sw-mouse-paste-clipboard (click arg)
;; ;;   (interactive "e\nP")
;; ;;   (let ((proc (get-buffer-process (current-buffer))))
;; ;;     (term-send-string proc (current-kill 0)))
;; ;;   (setq deactivate-mark t))

;; ;; (defun sw-mouse-copy-region-to-clipboard (click)
;; ;;   (interactive "e")
;; ;;   (mouse-set-region click)
;; ;;   (let ((transient-mark-mode nil))
;; ;;     (copy-region-as-kill (region-beginning) (region-end))))

;; ;; (define-key term-raw-map
;; ;;   [drag-mouse-1]
;; ;;   'sw-mouse-copy-region-to-clipboard)

;; ;; (define-key term-raw-map [mouse-3] 'sw-mouse-paste-clipboard)

;; ;; ;; Functions to read a buffer name from the user and select the shell-specific frame if we’ve set sw-open-in-new-frame.

;; ;; (defun sw-read-buffer-name ()
;; ;;   (when sw-remove-dead-terms
;; ;;     ;; Remove dead terms before offering them to the user
;; ;;     (setq sw-buffers (delete-if-not 'sw-shell-exists-p sw-buffers)))
;; ;;   (let ((buffer-name
;; ;;          (ido-completing-read
;; ;;           "Choose buffer name: "
;; ;;           sw-buffers)))

;; ;;     (if (stringp buffer-name)
;; ;;         buffer-name
;; ;;       (error "Invalid buffer name"))))

;; ;; (defun sw-get-buffer-proc ()
;; ;;   (sw-get-process-if-live (sw-read-buffer-name)))

;; ;; (defun sw-select-frame ()
;; ;;   (if (not sw-open-in-new-frame)
;; ;;       (sw-set-display)
;; ;;     (unless (frame-live-p sw-frame)
;; ;;       (setq sw-frame (make-frame))
;; ;;       (select-frame-set-input-focus sw-frame)
;; ;;       (sw-set-display))
;; ;;     (select-frame-set-input-focus sw-frame)))

;; ;; ;; This actually selects the buffer, reading the buffer-name from the user if necessary.

;; ;; (defun sw-choose-buffer (&optional buffer-name)
;; ;;   (sw-select-frame)

;; ;;   (unless (stringp buffer-name)
;; ;;     (setq buffer-name (sw-read-buffer-name)))

;; ;;   (unless (sw-shell-exists-p buffer-name)
;; ;;     (sw-kill-buffer-if-no-process buffer-name)
;; ;;     (setq sw-buffers (delete buffer-name sw-buffers)))

;; ;;   (let ((already-existed t))
;; ;;     (if (member buffer-name sw-buffers)
;; ;;         (switch-to-buffer (concat "*" buffer-name "*"))
;; ;;       (setq already-existed nil)
;; ;;       (push buffer-name sw-buffers))

;; ;;     (list buffer-name already-existed)))

;; ;; ;; And these are the top level commands – sw-open-shell and sw-open-remote-shell. They build on sw-standard-shell and sw-server-login respectively but read a buffer name and remote server name as appropriate.

;; ;; (defun sw-open-shell (&optional buffer-name)
;; ;;   (interactive)
;; ;;   (multiple-value-bind (buffer-name already-existed)
;; ;;       (sw-choose-buffer buffer-name)
;; ;;     (unless already-existed
;; ;;       (sw-standard-shell buffer-name))))

;; ;; (defun sw-open-remote-shell (&optional buffer-name server-name)
;; ;;   (interactive)
;; ;;   (multiple-value-bind (buffer-name already-existed)
;; ;;       (sw-choose-buffer buffer-name)
;; ;;     (unless already-existed
;; ;;       (unless (stringp server-name)
;; ;;         (setq server-name (read-string "Server: " buffer-name)))
;; ;;       (sw-server-login server-name buffer-name))))

;; ;; (provide 'shell-wrappers)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; 2010_11_29 
;; ;; | icomplete-mode                           |                                       | Offer completions for buffers, commands, etc.                                                                              |            |
;; ;; | iswitchb-mode                            |                                       | Show all buffer names during C-x b                                                                                         |            |

;; (icomplete-mode)
;; (iswitchb-mode)


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; 2011_03_10
;; ;; lusty explorer
;; ;; del, for ido-mode replace it.
;; ;; (when (require 'lusty-explorer nil 'noerror)

;; ;;   ;; overrride the normal file-opening, buffer switching
;; ;;   (global-set-key (kbd "C-x C-f") 'lusty-file-explorer)
;; ;;   (global-set-key (kbd "C-x b")   'lusty-buffer-explorer))

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; 2011_03_10
;; (global-auto-revert-mode 1)


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; 2011_03_11
;; ;; advice, make ispell more smart
;; (defadvice ispell-command-loop (before ispell-reverse-miss-list activate)
;; "reverse the first argument to ispell-command-loop"
;; (ad-set-arg 0 (reverse (ad-get-arg 0))))

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; 2011_03_11
;; ;; show-file-name()
;; ;; copy-full-path-to-kill-ring()
;; ;; :@@@@@@:
;; (defun show-file-name ()
;;   "Show the full path file name in the minibuffer."
;;   (interactive)
;;   (message (buffer-file-name))
;;   (kill-new (file-truename buffer-file-name))
;; )
;; ;; (global-set-key "\C-cz" 'show-file-name)


;; (defun copy-full-path-to-kill-ring ()
;;   "copy buffer's full path to kill ring"
;;   (interactive)
;;   (when buffer-file-name
;;     (kill-new (file-truename buffer-file-name))))

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; 2011_03_11
;; ;; uniquify
;; ;; Emacs Tip #11: uniquify
;; ;; Do you dislike the buffer names Emacs generates when two files have
;; ;; the same name? e.g. "myfile.txt" and "myfile.txt<2>"
;; ;; A package 'uniquify' changes the default naming of buffers to include
;; ;; parts of the file name (directory names) until the buffer names are
;; ;; unique.
;; ;; For instance, buffers visiting the files:
;; ;; /u/mernst/tmp/Makefile
;; ;; /usr/projects/zaphod/Makefile
;; ;; would be named
;; ;; Makefile|tmp
;; ;; Makefile|zaphod
;; ;; respectively (instead of "Makefile" and "Makefile<2>").
;; ;; There are other naming schemes possible.
;; ;; I use this to my .emacs:
;; (require 'uniquify)
;; (setq uniquify-buffer-name-style 'reverse)
;; (setq uniquify-separator "/")
;; (setq uniquify-after-kill-buffer-p t) ; rename
;; ;; after killing uniquified
;; (setq uniquify-ignore-buffers-re "^\\*") ; don't
;; ;; muck with special buffers
;; ;; For the *info* page,
;; ;; C-h i m emacs RET s uniquify RET

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; 2011_03_11
;; ;; If you don't like having lines of code/text with whitespace at the
;; ;; ends, you can turn on the variable 'show-trailing-whitespace' to have
;; ;; Emacs highlight the offending whitespace.
;; ;; When set, the variable's value becomes buffer local, so set it to true
;; ;; in the mode-hooks for your preferred modes. Or, if you want it on all
;; ;; the time, change the default value with:
;; ;; 2011_03_11 not show, only show when needed.
;; ;; (setq-default show-trailing-whitespace t)
;; (setq-default show-trailing-whitespace nil)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; browse-kill-ring
;; ;; :@@@@@:
;; ;; Emacs Tip #13: browse-kill-ring
;; ;; The kill-ring. You know about the kill-ring, right?
;; ;; C-h i m emacs RET kill ring RET
;; ;; Ok, now you know about the kill-ring, it is basically a list of all the
;; ;; chunks of text that have been cut (C-w) (or just saved using M-w). The
;; ;; basic interaction with the kill-ring is:
;; ;; C-y (aka "yank" aka "paste")
;; ;; After you've pasted text, if you didn't want that, but an earlier chunk of
;; ;; text, the key M-y will cycle through the earlier chunks, replacing what
;; ;; was just pasted with the earlier text.
;; ;; If that's too much for you to handle, you can browse the entries in the
;; ;; kill-ring and paste them in (more than one if you want).
;; ;; To get it, you can download browse-kill-ring.el, and you can also check
;; ;; out the project home page.
;; ;; To install and use, do the standard download, load-path manipulation,
;; ;; and:
;; (require 'browse-kill-ring)
;; ;; M-x browse-kill-ring

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; Emacs Tip #15: indent yanked code
;; ;; I'm a bit apprehensive about this chunk of code, mainly because it
;; ;; facilitates cut/paste coding, which I abhor. Nevertheless, it does come
;; ;; in handy.
;; ;; When you (shudder) cut/paste code, one of the first things you do is
;; ;; immediately indent the code appropriately. Well, why not have that
;; ;; done automatically for you? This chunk of emacs lisp does the trick
;; ;; rather nicely.
;; ;; It will not indent regions that are too large (see yank-advisedindent-
;; ;; threshold) and given a prefix argument, it will not indent.

;; ;; ;; automatically indenting yanked text if in
;; ;; programming-modes
;; (defvar yank-indent-modes '(emacs-lisp-mode
;; c-mode c++-mode
;; tcl-mode sql-mode
;; perl-mode cperl-mode
;; java-mode jde-mode
;; lisp-interaction-mode
;; LaTeX-mode TeX-mode)
;; "Modes in which to indent regions that are yanked
;; (or yank-popped)")
;; (defvar yank-advised-indent-threshold 1000
;; "Threshold (# chars) over which indentation does not
;; automatically occur.")
;; (defun yank-advised-indent-function (beg end)
;; "Do indentation, as long as the region isn't too
;; large."
;; (if (<= (- end beg) yank-advised-indent-threshold)
;; (indent-region beg end nil)))
;; (defadvice yank (after yank-indent activate)
;; "If current mode is one of 'yank-indent-modes,
;; indent yanked text (with prefix arg don't indent)."
;; (if (and (not (ad-get-arg 0))
;; (member major-mode yank-indent-modes))
;; (let ((transient-mark-mode nil))
;; (yank-advised-indent-function (region-beginning)
;; (region-end)))))
;; (defadvice yank-pop (after yank-pop-indent activate)
;; "If current mode is one of 'yank-indent-modes,
;; indent yanked text (with prefix arg don't indent)."
;; (if (and (not (ad-get-arg 0))
;; (member major-mode yank-indent-modes))
;; (let ((transient-mark-mode nil))
;; (yank-advised-indent-function (region-beginning)
;; (region-end)))))




;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (set-terminal-coding-system 'utf-8-dos) 


;; ;;;; open all marked files
;; ;; in dired mode, mark file, type 'F' to open all marked files
;; ;; 2011_08_24
;; (eval-after-load "dired"
;;   '(progn
;;      (define-key dired-mode-map "F" 'my-dired-find-file)
;;      (defun my-dired-find-file (&optional arg)
;;        "Open each of the marked files, or the file under the point, or when prefix arg, the next N files "
;;        (interactive "P")
;;        (let* ((fn-list (dired-get-marked-files nil arg)))
;;          (mapc 'find-file fn-list)))))



;; ;; ;;;; icicles
;; ;; 2011_09_26 delete for not support past and C-k
;; ;; (add-to-list 'load-path "~/elisp/icicles/")
;; ;; (require 'icicles)
;; ;; (icy-mode 1)

;; ;;; image view
;; (autoload 'thumbs "thumbs" "Preview images in a directory." t)

;; (add-to-list 'exec-path "~/HomeEmacs/bin/jpeg")

;; (add-to-list 'exec-path "~/Program/ImageMagick-6.7.6-Q16")


;; ;; (setq image-dired-external-viewer "C:/Program Files/ACD Systems/ACDSee/12.0/ACDSeeQV12.exe")
;; ;; (setq image-dired-external-viewer "C:/Program Files/Google/Picasa3/PicasaPhotoViewer.exe")
;; ;; (setq image-dired-external-viewer "~/Program/PicasaPhotoViewer.exe")

;; ;; 2012_05_08
;; (setq image-dired-cmd-create-temp-image-program "~/Program/ImageMagick-6.7.6-Q16/convert.exe")
;; (setq image-dired-cmd-create-thumbnail-program "~/Program/ImageMagick-6.7.6-Q16/convert.exe")
;; (setq image-dired-cmd-pngcrush-program "~/Program/ImageMagick-6.7.6-Q16/convert.exe")
;; (setq image-dired-cmd-pngnq-program "~/Program/ImageMagick-6.7.6-Q16/convert.exe")
;; (setq image-dired-cmd-rotate-original-program "~/Program/ImageMagick-6.7.6-Q16/convert.exe")
;; (setq image-dired-cmd-rotate-thumbnail-program "~/Program/ImageMagick-6.7.6-Q16/convert.exe")
;; (setq image-dired-cmd-write-exif-data-program "~/Program/ImageMagick-6.7.6-Q16/convert.exe")



;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; magit
;; ;; 2013_06_06
;; (require 'cl-lib)
;; (add-to-list 'load-path "~/elisp/magit-master/")
;; (require 'magit)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; MobileOrg
;; ;; 2013_11_20_165807
;; ;; Set to the location of your Org files on your local system
;; (setq org-directory "~/Dropbox/Apps/MobileOrg")


;; ;; Set to the name of the file where new notes will be stored
;; (setq org-mobile-inbox-for-pull "~/org/flagged.org")

;; ;; Set to <your Dropbox root directory>/MobileOrg.
;; (setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")

;; (setq org-mobile-files (quote ("c:/KevinTian/Document/Job.txt" "c:/KevinTian/Document/Shopping.txt" "c:/KevinTian/Document/DocServer/MR863PdcchPowerBoast.txt" "c:/KevinTian/Document/Health.txt" "c:/KevinTian/Document/Book.txt" "c:/KevinTian/Document/ToDo.txt" "c:/KevinTian/Document/DocServer/ENC.txt" "c:/KevinTian/Document/DocServer/Tool.txt" "c:/KevinTian/Document/Living.txt")))


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; Visible Bookmarks
;; ;; https://github.com/joodland/bm
;; ;; 2013_12_24_094208
;; (add-to-list 'load-path "~/elisp/bm-master/")
;; (require 'bm)

