
;;Make sure spaces are used when indenting code
(setq indent-tabs-mode nil)

;; truncate-lines
;; (setq truncate-lines t) ;; should use scroll bar to see the long string
(setq truncate-lines nil) ;; wrapper the lines to show in the window

;; set default mode
;; (setq default-major-mode 'outline-mode)
(setq default-major-mode 'text-mode)

;;close blink cursor, it seems nil not take effect
(setq blink-cursor-mode nil)

;; add by kevin tian

;; (setq-default standard-indent 4)
;; (setq c-basic-offset 4)
(setq-default standard-indent 2)
(setq c-basic-offset 2)

;; insert only spaces	
(setq-default indent-tabs-mode-nil)

;;kevin 20080801: Turn on font-lock mode to color text in certain code
;;(global-font-lock-mode nil)
(global-font-lock-mode t)

;; auto-save will cause halt for a while, enlarge the time to 120 minutes.
(setq auto-save-interval 7200)
(setq case-fold-search nil)

;;显示列号
(setq column-number-mode t) 


;;括号匹配时显示另外一边的括号，而不是烦人的跳到另一个括号
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;;光标靠近鼠标指针时，让鼠标指针自动让开，别挡住视线。
(mouse-avoidance-mode 'animate)

;;在标题栏显示buffer的名字，而不是 emacs@wayne.com 这样没用的提示。
;; comment out for AutoHotKey recoginize the window
(setq frame-title-format "%b - emacs")
 
;3.Windows版的Emacs为什么不能显示图片?
;    使用cvs版的ntemacs,在.emacs中加入：
(auto-image-file-mode t)

;;设置有用的个人信息。这在很多地方有用。
(setq user-full-name "Kevin Tian")
(setq user-mail-address "kevin.tian.balance@gmail.com")

;; 每当设置书签的时候都保存书签文件，否则只在你退出 Emacs 时保存。
(setq bookmark-save-flag 1)

;; ;; 在 mode-line 上显示时间。
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(setq display-time-use-mail-icon t)
(setq display-time-interval 10)


;; arrange time
(setq display-time-24hr-format t)

(setq display-time-day-and-date t)

(display-time)

(setq todo-file-do "~/emacs/todo/do")

(setq todo-file-done "~/emacs/todo/done")

(setq todo-file-top "~/emacs/todo/top")

(setq diary-file "~/emacs/diary/diary")

(setq diary-mail-addr "kevintianbalance@sina.com")


;;ÉèÖÃ´ò¿ªÎÄ¼þµÄÈ±Ê¡Â·¾¶
;; (setq default-directory "~/KevinTian/Document/")

;; ÔÚÐÐÊ× C-k Ê±£¬Í¬Ê±É¾³ý¸ÃÐÐ¡£
(setq-default kill-whole-line t)

;; ×Ô¶¯µÄÔÚÎÄ¼þÄ©Ôö¼ÓÒ»ÐÂÐÐ
(setq require-final-newline t)


;; Misc
;; 不要打入 TAB 时总是听到 PC 喇叭嘀嘀嘀的叫

(setq visible-bell t)
;; 不要总是没完没了的问yes or no, 为什么不能用 y/n

(fset 'yes-or-no-p 'y-or-n-p)
;; 为什么不能显示个时间什么的

;; 为什么不能像Windows下编辑器那样, 高亮显示要拷贝的区域
(transient-mark-mode t)


;; 是否生成临时文件

(setq-default make-backup-files t)
;;(setq-default make-backup-files nil)

;;Turn on font-lock mode to color text in certain modes
(global-font-lock-mode t)




;;;;
;; for muse contents of table depth is enlarged to 9 from 2
(setq-default muse-publish-contents-depth 9)
;; If a link to a locally-available image is encountered in the link description, Muse mode will
;; attempt to display it if your version of Emacs permits this.
(setq-default muse-colors-inline-images t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; close org auto fill comments
(setq comment-start nil)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; width for auto-fill-mode
;; 70 -> 60 2014_11_25_205522
;; 60 -> 58 2015_06_04_173502
;; wechat
;; (setq-default fill-column 57)
(setq-default fill-column 47)

;; (setq-default fill-column 36)
