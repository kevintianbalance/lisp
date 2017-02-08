;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Here's how to set specific browser to open links. Put in your emacs init.
;; works
(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "google-chrome")

;; NOT work
;; set specific browser to open links
;; (setq browse-url-browser-function 'browse-url-firefox)
;; (setq browse-url-browser-function 'browse-url-chromium) ; google's browser
;; (setq browse-url-browser-function 'eww-browse-url) ; emacs browser

;; You can also set up a regex list to open specific browser depending on URL.
;; use browser depending on url
;; (setq
;;  browse-url-browser-function
;;  '(
;;    ("wikipedia\\.org" . browse-url-firefox)
;;    ("github" . browse-url-chromium)
;;    ("thefreedictionary\\.com" . eww-browse-url)
;;    ("." . browse-url-default-browser)
;;    ))


;; (defun browse-url (url &rest args)
;;   "Browse url using outer browser"
;;   (interactive (browse-url-interactive-arg "URL: "))
;;   (call-process "open" nil nil nil url))

;; (defun my-org-open-at-point (&optional arg)
;;   (interactive "P")
;;   (if (not arg)
;;       (org-open-at-point)
;;     (let ((browse-url-browser-function 'browse-url-chromium))
;;       (org-open-at-point))))
;; ;; and binding it to C-c C-o:

;; (define-key org-mode-map (kbd "C-c C-o") 'my-org-open-at-point)

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

;; removed for ubuntu
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; multi-term, //Kevin Tian: conflict with windows
;; (add-to-list 'load-path "~/elisp/")
;; (require 'multi-term)
;; (setq multi-term-program (concat CYGWIN_ROOT "/bin/bash.exe"));

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



;; removed for ubuntu
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; iSpell set path
;; (setq-default
;;  ispell-program-name
;;  "~/bin/Aspell/bin/aspell.exe")

;; removed for ubuntu
;; 
;; (load "auctex.el" nil t t)
;; (require 'tex-mik)

;;          Customary Customization
;;          To edit LaTeX documents, you will probably want to include the following in your ~/.emacs.
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
;; (add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)

;; to compile document to PDF
(setq TeX-PDF-mode t)

;;  2012_05_07
(setq preview-image-type 'pnm)


;; removed for ubuntu
;; ;; ~/elisp/cdlatex.el install seperately
;; (add-hook 'org-mode-hook 'turn-on-org-cdlatex)

;; 2012_05_28
;; (setq org-export-exclude-tags UNEXPORT)


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; epresent
;; (setq load-path (append load-path (list "~/elisp/eschulte-epresent-44c3870/")))
;; (require 'epresent)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; w3m
;; 2012_05_07
;; (setq load-path (append load-path (list "~/elisp/emacs-w3m-1.4.4/")))
(setq load-path (append load-path (list "~/elisp/emacs-w3m-dev/")))
(require 'w3m-load)
(require 'w3m)
;; (require 'mime-w3m)

;; (setq w3m-command-arguments
;; 			(nconc w3m-command-arguments
;; 						 '("-o" "http_proxy=http://iproxy-sh.cn.ao.ericsson.se:8080/")))


;; (setq w3m-command-arguments
;; 			(nconc w3m-command-arguments
;; 						 '("-o" "http_proxy=http://www-proxy.ericsson.se:8080/")))

;; ;; could not use
;; (setq w3m-command-arguments
;; 			(nconc w3m-command-arguments
;; 						 '("-o" "http_proxy=http://127.0.0.1:8087/")))



(setq w3m-home-page "http://www.google.com.hk")

(setq w3m-default-display-inline-images nil)

;; Inline images?
(setq mm-attachment-override-types '("image/.*"))

;; Or, like this:
;; (add-to-list 'mm-attachment-override-types "image/.*")

;; If there is a text alternative to an HTML message, you might want Gnus to show the text instead of starting a browser:

;; No HTML mail
(setq mm-discouraged-alternatives '("text/html" "text/richtext"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Predictive Setup
;; 2012_05_04
;; delete, could not work with windows
;; Error: dictree-load: Wrong number of arguments: called-interactively-p, 1
;; Error For Make: Makefile:160: recipe for target `latex/dict-latex-bibstyle.elc' failed


;; (add-to-list 'load-path "~/.emacs.d/predictive")
;; (add-to-list 'load-path "~/.emacs.d/predictive/latex")
;; (add-to-list 'load-path "~/.emacs.d/predictive/html")
;; (add-to-list 'load-path "~/.emacs.d/predictive/texinfo")

;; (require 'predictive)

;; start on command predictive-mode, to save memory
;; (autoload 'predictive-mode "~/.emacs.d/predictive/predictive"
;;   "Turn on Predictive Completion Mode." t)


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; GIT Configuration One
;; (add-to-list 'load-path "~/elisp/git")

;; (require 'vc-git)
;; (require 'git)
;; (require 'git-blame)
;; (require 'git-emacs)

;; (add-to-list 'vc-handled-backends 'Git)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; GIT Configuration Two
(add-to-list 'load-path "~/elisp/git-emacs")

(require 'git-emacs)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Emacs macro to add a pomodoro item
;; http://theadmin.org/articles/pomodoro-emacs-with-orgmod/e
(fset 'pomodoro
			"[ ]")
 
;; Emacs macro to add a pomodoro table
;;
;; | G | Organization | [ ] |
;; |   |              |     |
(fset 'pomodoro-table
			[?| ?  ?G ?  ?| ?  ?O ?r ?g ?a ?n ?i ?z ?a ?t ?i ?o ?n ?  ?| ?  ?\[ ?  ?\] ?  ?| tab])



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; http://www.emacswiki.org/emacs/quick-jump.el
;; ~/elisp/quick-jump.el
;;
;; (require 'quick-jump)
;; (quick-jump-default-keybinding)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 2013_03_04
;; http://emacsmode.googlecode.com/svn/trunk/person/cngump/.emacs.d/load-path/recent-jump.el
;; sometimes, we start a big jump, e.g. go to the beginning of buffer, search,
;; page down etc, it is handy that you can go back to where you start. For
;; example, when we writing program source code, we ofter search for some
;; reference and go back to where you start and continue writing. But how can we
;; define "Big Jump". I can not find a proper hook for the big jump, so at last
;; I choose the pre-command-hook. Now what my defination for "Big Jump" is :
;; 
;; 1. you issued some special command, it can be defined by
;; recent-jump-hook-commands 
;;
;; 2. you jumped really much. that is you move more than `recent-jump-threshold'
;; lines.
;;
;; C-o is binded for open-lines, I not used to very often, and VI bind C-o for
;; go to old point, so it is a good idea to bind "C-o" for jumping back where
;; you start. and "M-o" is suitable for jump forward, i.e. undo the jumping back.
;;
;; sample configuration
(setq recent-jump-threshold 4)
(setq recent-jump-ring-length 10)
;; TODO bind new key
;; (global-set-key (kbd "C-o") 'recent-jump-jump-backward)
;; (global-set-key (kbd "M-o") 'recent-jump-jump-forward)
(require 'recent-jump)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; response to chrome edit request
;; TODO delete, it do not workwith chrome in windows
;; (require 'edit-server)
;; (edit-server-start)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; If running on windows load Outlook Edit
;; could not run due to tcom.dll do not support win7
;; https://github.com/dholm/outlookedit
;; (setq load-path (cons "~/.emacs.d/vendor/outlookedit" load-path))
;; (if (eq system-type 'windows-nt)
;;     (require 'outlookedit))

;; (require 'outlookedit)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun the-the ()
	"Search forward for for a duplicated word."
	(interactive)
	(message "Searching for for duplicated words ...")
	(push-mark)
	;; This regexp is not perfect
	;; but is fairly good over all:
	(if (re-search-forward
			 "\\b\\([^@ \n\t]+\\)[ \n\t]+\\1\\b" nil 'move)
			(message "Found duplicated word.")
		(message "End of buffer")))


(defun search-duplicates ()
  "Search two duplicate words in buffer."
  ;; we're looking for:
  ;; the start of a word+any chars at least once+
  ;; the end of the word+any tabs, spaces or newlines+
  ;; the repeated word
  (interactive)
  (search-forward-regexp "\\(\\b\\w+\\b\\)[ \t\n]+\\b\\1\\b"))

(global-set-key '[(control c) s] 'search-duplicates)


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

;; removed for ubuntu
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; multi-term, //Kevin Tian: conflict with windows
;; (add-to-list 'load-path "~/elisp/")
;; (require 'multi-term)
;; (setq multi-term-program (concat CYGWIN_ROOT "/bin/bash.exe"));

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

(add-to-list 'exec-path "~/HomeEmacs/bin/jpeg")

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



;; removed for ubuntu
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; magit
;; ;; 2013_06_06
;; (require 'cl-lib)
;; (add-to-list 'load-path "~/elisp/magit-master/")
;; (require 'magit)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Visible Bookmarks
;; https://github.com/joodland/bm
;; 2013_12_24_094208
(add-to-list 'load-path "~/elisp/bm-master/")
(require 'bm)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; New Way to Install packages
;; Install from MELPA:
;; Add MELPA to your EMACS installation:

;; Install the package via M-x package-install RET org-pomodoro

;; not work in office 2014_09_29_152928

;; (add-to-list 'package-archives
;; 	     '("melpa" . "http://melpa.milkbox.net/packages/") t)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; weekly review related function by Sacha
;; http://pages.sachachua.com/.emacs.d/Sacha.html#weekly-review
(setq load-path (append load-path (list "~/elisp/quantified-master/lisp")))
(load "quantified.el")


(defvar sacha/weekly-review-line-regexp 
  "^  \\([^:]+\\): +\\(Sched[^:]+: +\\)?TODO \\(.*?\\)\\(?:[      ]+\\(:[[:alnum:]_@#%:]+:\\)\\)?[        ]*$"
  "Regular expression matching lines to include.")
(defvar sacha/weekly-done-line-regexp 
  "^  \\([^:]+\\): +.*?\\(?:Clocked\\|Closed\\):.*?\\(?:TODO\\|DONE\\) \\(.*?\\)\\(?:[       ]+\\(:[[:alnum:]_@#%:]+:\\)\\)?[        ]*$"
  "Regular expression matching lines to include as completed tasks.")

(defun sacha/quantified-get-hours (category time-summary)
  "Return the number of hours based on the time summary."
  (if (stringp category)
      (if (assoc category time-summary) (/ (cdr (assoc category time-summary)) 3600.0) 0)
    (apply '+ (mapcar (lambda (x) (sacha/quantified-get-hours x time-summary)) category))))

(defun sacha/org-summarize-focus-areas ()
  "Summarize previous and upcoming tasks as a list."
  (interactive)
  (let ((base-date (apply 'encode-time (org-read-date-analyze "-fri" nil '(0 0 0))))
        (line-re sacha/weekly-review-line-regexp)
        (done-re sacha/weekly-done-line-regexp)
        business relationships life business-next relationships-next life-next string 
        start end time-summary biz-time)
    (setq start (format-time-string "%Y-%m-%d" (days-to-time (- (time-to-number-of-days base-date) 6))))
    (setq end (format-time-string "%Y-%m-%d" (days-to-time (1+ (time-to-number-of-days base-date)))))
    (setq time-summary (quantified-summarize-time start end))
    (setq biz-time (sacha/quantified-get-hours "Business" time-summary))
    (save-window-excursion
      (org-agenda nil "W")
      (setq string (buffer-string))
      (with-temp-buffer
        (insert string)
        (goto-char (point-min))
        (while (re-search-forward line-re nil t)
          (cond
           ((string= (match-string 1) "routines") nil) ; skip routine tasks
           ((or (string= (match-string 1) "business") (string= (match-string 1) "tasks"))
            (add-to-list 'business-next (concat "  - [ ] " (match-string 3))))
           ((string= (match-string 1) "people")
            (add-to-list 'relationships-next (concat "  - [ ] " (match-string 3))))
           (t (add-to-list 'life-next (concat "  - [ ] " (match-string 3))))))))
    (save-window-excursion
      (org-agenda nil "W")
      (org-agenda-later -1)
      (org-agenda-log-mode 16)
      (setq string (buffer-string))
      ;; Get any completed tasks from the current week as well
      (org-agenda-later 1)
      (org-agenda-log-mode 16)
      (setq string (concat string "\n" (buffer-string)))
      (with-temp-buffer
        (insert string)
        (goto-char (point-min))
        (while (re-search-forward done-re nil t)
          (cond
           ((string= (match-string 1) "routines") nil) ; skip routine tasks
           ((or (string= (match-string 1) "business") (string= (match-string 1) "tasks"))
            (add-to-list 'business (concat "  - [X] " (match-string 2))))
           ((string= (match-string 1) "people")
            (add-to-list 'relationships (concat "  - [X] " (match-string 2))))
           (t (add-to-list 'life (concat "  - [X] " (match-string 2))))))))
    (setq string
          (concat
           (format "- *Business* (%.1fh - %d%%)\n" biz-time (/ biz-time 1.68))
           (mapconcat 'identity (sort business 'string<) "\n") "\n"
           (mapconcat 'identity (sort business-next 'string<) "\n")
           "\n"
           (format "  - *Earn* (%.1fh - %d%% of Business)\n"
                   (sacha/quantified-get-hours "Business - Earn" time-summary)
                   (/ (sacha/quantified-get-hours "Business - Earn" time-summary) (* 0.01 biz-time)))
           (format "  - *Build* (%.1fh - %d%% of Business)\n"
                   (sacha/quantified-get-hours "Business - Build" time-summary)
                   (/ (sacha/quantified-get-hours "Business - Build" time-summary) (* 0.01 biz-time)))
           (format "    - *Drawing* (%.1fh)\n"
                   (sacha/quantified-get-hours '("Business - Build - Drawing"
                                                 "Business - Build - Book review")  time-summary))
           (format "    - *Delegation* (%.1fh)\n"
                   (sacha/quantified-get-hours "Business - Build - Delegation" time-summary))
           (format "    - *Packaging* (%.1fh)\n"
                   (sacha/quantified-get-hours "Business - Build - Packaging" time-summary))
           (format "    - *Paperwork* (%.1fh)\n"
                   (sacha/quantified-get-hours "Business - Build - Paperwork"  time-summary))
           (format "  - *Connect* (%.1fh - %d%% of Business)\n"
                   (sacha/quantified-get-hours "Business - Connect" time-summary)
                   (/ (sacha/quantified-get-hours "Business - Connect" time-summary) (* 0.01 biz-time)))
           (format "- *Relationships* (%.1fh - %d%%)\n"
                   (sacha/quantified-get-hours '("Discretionary - Social"
                                                 "Discretionary - Family") time-summary)
                   (/ (sacha/quantified-get-hours '("Discretionary - Social"
                                                    "Discretionary - Family") time-summary) 1.68))
           (mapconcat 'identity (sort relationships 'string<) "\n") "\n"
           (mapconcat 'identity (sort relationships-next 'string<) "\n")
           "\n"
           (format "- *Discretionary - Productive* (%.1fh - %d%%)\n"
                   (sacha/quantified-get-hours "Discretionary - Productive" time-summary)
                   (/ (sacha/quantified-get-hours "Discretionary - Productive" time-summary) 1.68))
           (format "  - *Emacs* (%.1fh - %d%% of all)\n"
                   (sacha/quantified-get-hours "Discretionary - Productive - Emacs" time-summary)
                   (/ (sacha/quantified-get-hours "Discretionary - Productive - Emacs" time-summary) 1.68))
           (mapconcat 'identity (sort life 'string<) "\n") "\n"
           (mapconcat 'identity (sort life-next 'string<) "\n") "\n"
           (format "  - *Writing* (%.1fh)\n"
                   (sacha/quantified-get-hours "Discretionary - Productive - Writing" time-summary))
           (format "- *Discretionary - Play* (%.1fh - %d%%)\n"
                   (sacha/quantified-get-hours "Discretionary - Play" time-summary)
                   (/ (sacha/quantified-get-hours "Discretionary - Play" time-summary) 1.68))
                                        ;                 (format "- *Discretionary - Travel* (%.1fh - %d%%)\n"
                                        ;                         (sacha/quantified-get-hours "Discretionary - Travel" time-summary)
                                        ;                         (/ (sacha/quantified-get-hours "Discretionary - Travel" time-summary) 1.68))
           (format "- *Personal routines* (%.1fh - %d%%)\n"
                   (sacha/quantified-get-hours "Personal" time-summary)
                   (/ (sacha/quantified-get-hours "Personal" time-summary) 1.68))
           (format "- *Unpaid work* (%.1fh - %d%%)\n"
                   (sacha/quantified-get-hours "Unpaid work" time-summary)
                   (/ (sacha/quantified-get-hours "Unpaid work" time-summary) 1.68))
           (format "- *Sleep* (%.1fh - %d%% - average of %.1f per day)\n"
                   (sacha/quantified-get-hours "Sleep" time-summary)
                   (/ (sacha/quantified-get-hours "Sleep" time-summary) 1.68)
                   (/ (sacha/quantified-get-hours "Sleep" time-summary) 7)
                   )))
    (if (called-interactively-p 'any)
        (insert string)
      string)))

(defun sacha/org-add-line-item-task (task)
  (interactive "MTask: ")
  (org-insert-heading)
  (insert "[ ] " task)
  (let ((org-capture-entry '("t" "Tasks" entry
                             (file+headline "~/personal/organizer.org" "Tasks")
                             "")))
    (org-capture nil "t")
    (insert "TODO " task "\nSCHEDULED: <" (org-read-date) ">")))
					;(define-key org-mode-map (kbd "C-c t") 'sacha/org-add-line-item-task)


(defun sacha/org-prepare-weekly-review ()
  "Prepare weekly review template."
  (interactive)
  (let ((base-date (apply 'encode-time (org-read-date-analyze "-fri" nil '(0 0 0))))
        start end)
    (setq start (format-time-string "%Y-%m-%d" (days-to-time (- (time-to-number-of-days base-date) 6))))
    (setq end (format-time-string "%Y-%m-%d" (days-to-time (1+ (time-to-number-of-days base-date)))))
    (insert
     (concat
      "*** Weekly review: Week ending " (format-time-string "%B %e, %Y" base-date) "  :weekly:\n"
      "*Blog posts*\n\n"
      "*Sketches*\n\n" 
      "*Link round-up*\n\n"
      "\n\n*Focus areas and time review*\n\n"
      (sacha/org-summarize-focus-areas)
      "\n"))))

 (defvar sacha/org-quantified-categories 
    '(("Business" 
       ("Earn" . "Business - Earn") 
       ("E1" . "Business - Earn - Consulting - E1") 
       ("Connect" . "Business - Connect") 
       ("Build" . "Business - Build"))
      ("Discretionary"
       ("Social" . "Discretionary - Social")
       ("Productive" . "Discretionary - Productive")
       ("Writing" . "Discretionary - Productive - Writing")
       ("Emacs" . "Discretionary - Productive - Emacs")
       ("Play" . "Discretionary - Play"))
      ("Personal" ;("Biking" . "Personal - Bike")
       ("Routines" . "Personal - Routines"))
      ("Sleep" nil)
      ("Unpaid work" 
       ("Commuting" . "Unpaid work - Subway")
       ("Cook" . "Unpaid work - Cook")
       ("Tidy" . "Unpaid work - Tidy up")))
    "Categories for time summary.")

  (defun sacha/org-summarize-time-use (&optional start end)
    (require 'quantified)
    (interactive)
    (unless start (setq start (format-time-string "%Y-%m-%d" (days-to-time (- (time-to-number-of-days base-date) 6)))))
    (unless end (setq end (format-time-string "%Y-%m-%d" (days-to-time (1+ (time-to-number-of-days base-date))))))
    (let ((time-summary (quantified-summarize-time start end))
          (categories sacha/org-quantified-categories)
          result)
      (setq result
            (mapconcat
             (lambda (a)
               (if (assoc (car a) time-summary)
                   (concat
                    (format "- %s: %.1f hours" (car a) (/ (cdr (assoc (car a) time-summary)) 3600.0))
                    (if (cdr a)
                        (let ((detail
                               (delq nil
                                     (mapcar (lambda (b)
                                               (if (assoc (cdr b) time-summary)
                                                   (format "%s: %.1f"
                                                           (car b)
                                                           (/ (cdr (assoc (cdr b) time-summary)) 3600.0))
                                                 nil))
                                             (cdr a)))))
                          (if detail
                              (concat " (" (mapconcat 'identity detail ", ") ")")
                            ""))
                      "")
                    (if (string-equal (car a) "Sleep")
                        (format " - average of %.1f hours per day" (/ (cdr (assoc (car a) time-summary)) 3600.0 7.0))
                      "")
                    "\n")))
       categories ""))
(if (called-interactively-p)
    (insert result)
  result)))

(defun sacha/org-summarize-upcoming-week ()
  "Summarize upcoming tasks as a list."
  (interactive)
  (org-agenda nil "w")
  (let ((string (buffer-string))
        business relationships life)
    (with-temp-buffer
      (insert string)
      (goto-char (point-min))
      (while (re-search-forward sacha/weekly-review-line-regexp nil t)
        (cond
         ((string= (match-string 1) "routines") nil) ; skip routine tasks
         ((string= (match-string 1) "business")
          (add-to-list 'business (concat "  - [ ] " (match-string 3))))
         ((string= (match-string 1) "people")
          (add-to-list 'relationships (concat "  - [ ] " (match-string 3))))
         (t (add-to-list 'life (concat "  - [ ] " (match-string 3)))))))
    (setq string
          (concat
      "*Plans for next week*\n"
      "- Business\n"
      (mapconcat 'identity business "\n")
      "\n- Relationships\n"
      (mapconcat 'identity relationships "\n")
      "\n- Life\n"
      (mapconcat 'identity life "\n")))
    (if (called-interactively-p)
        (kill-new string)
      string)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Date: 2015_01_04_102304
;;;; onenote:///C:\KevinTian\Document\Onenote_\KevinOnenoteCBC\KevinOnenoteCBC\Emacs.one#ModeLineConfiguration&section-id={F243B461-C70F-4C6C-AD65-0175F43DB19A}&page-id={6F129652-CA94-42D7-A028-B4ABE2F4F4B5}&end

;; Content: Emacs Mode Line Configuration
;; • ‘display-time-mode’ – Enable the display of the current time, see DisplayTime
;; (display-time-mode)
;; • ‘line-number-mode’ – Enable or disable the display of the current line number, see also LineNumbers
;; • ‘column-number-mode’ – Enable or disable the display of the current column number
;; • ‘size-indication-mode’ (for Emacs 22 and up) – Enable or disable the current buffer size, Emacs 22 and later, see size-indication-mode
;; • ‘display-battery-mode’ – Enable or disable laptop battery information, see DisplayBatteryMode.
;; Here are particular enhancements to the mode line:


;;;; take effect on current buffer??
;; (setq mode-line-format
;;       (list
;;        ;; value of `mode-name'
;;        "%m: "
;;        ;; value of current buffer name
;;        "buffer %b, "
;;        ;; value of current line number
;;        "line %l "
;;        "-- user: "
;;        ;; value of user
;;        (getenv "USER")))


;;; not display time
(add-hook 'org-pomodoro-hook 'display-time-mode)

;;;; set not display date and day when display time
(setq display-time-day-and-date nil)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Date: 2015_01_28_140024
;; Content:  
(defalias 'last-command-char 'last-command-event)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 2015_03_23_113135
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; org-export-as-pdf

;; not work
;; (setq org-latex-to-pdf-process
;; 			'("texi2dvi -p -b -c -V %f"))


;; (setq org-latex-to-pdf-process (list "latexmk -pdf %f"))


(setq org-latex-to-pdf-process (list "latexmk -pdf %f"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Date: 2015_06_10_141301
;; Content: wiki export for org mode 
(setq load-path (append load-path (list "~/elisp/s.el-master")))
(load "s")
(setq load-path (append load-path (list "~/elisp/orgmode-mediawiki-master/")))
(require 'ox-mediawiki)
;; - Open a .org document and run =org-mw-export-as-mediawiki=

;; Bug 2015_06_11_141655
;; do not support "==="
;; Error "not: Wrong type argument: stringp, nil"

;; 2015_11_09_111509
;; https://github.com/emacs-helm/helm/wiki
;; Configure helm
(setq load-path (append load-path (list "~/elisp/helm")))
(setq load-path (append load-path (list "~/elisp/emacs-async")))
(require 'helm)
(require 'helm-config)
(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-unset-key (kbd "C-x c"))
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z

(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f") #'helm-find-files)

(helm-mode 1)

;; added for ubuntu
;; 2016_12_12_013039
;; ispell set to hunspell
;; It works!  It works!  After two hours of slogging, it works!
(if (file-exists-p "/usr/bin/hunspell")
    (progn
      (setq ispell-program-name "hunspell")
      (eval-after-load "ispell"
        '(progn (defun ispell-get-coding-system () 'utf-8)))))

;; helm-swoop
(setq load-path (append load-path (list "~/elisp/helm-swoop-1.7.2/")))
(require 'helm-swoop)


