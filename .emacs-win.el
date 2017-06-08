(setq load-path (append load-path (list "~/tiachen/lisp")))
(setq load-path (append load-path (list "~/mylisp")))
(setq load-path (append load-path (list "~/elisp")))
(setq load-path (append load-path nil))

(load "my_path")
(load "my_org")
(load "my_org-win")
(load "my_org_private")
(load "my_print")
(load "my_chinese")
;; (load "my_ecb")
;;  have bug with large .h file, like rrc.h 2010_05_09
(load "my_function")
(load "my_misc")
(load "my_personal")
(load "my_program")
(load "my_setting")
(load "my_var")
(load "my_dictionary") 
(load "my_session")
(load "my_eval")
(load "my_color-theme")
(load "my_cygwin")
(load "my_erlang")

;; replaced by my_cedet_emacs24.el for emacs 24
;; (load "my_cedet")

;; 
;; delete for emacs 24
;; (load "my_ecb_new")
(load "my_yasnippet.el")
(load "my_macro.el")
(load "my_cscope.el")

(load "my_eshell.el")
(load "my_package.el")

;; should open manually
;; bookmark "my_cedet"
;; (load "my_cedet_emacs24.el")

;;;;; from web
(load "dupwords.el")

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:stipple nil :background "black" :foreground "cornsilk" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight bold :height 140 :width normal :family "outline-courier new")))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(appt-delete-window-function (quote appt-delete-window))
 '(appt-display-duration 10 nil nil "originally is 10")
 '(appt-display-interval 2 nil nil "orig is 10")
 '(appt-display-mode-line t)
 '(appt-message-warning-time 10 nil nil "orig is 17")
 '(auto-save-interval 300)
 '(auto-save-timeout 30)
 '(ecb-layout-name "left-symboldef")
 '(ecb-layout-window-sizes
   (quote
    (("left-analyse"
      (0.18292682926829268 . 0.2777777777777778)
      (0.18292682926829268 . 0.24074074074074073)
      (0.18292682926829268 . 0.2222222222222222)
      (0.18292682926829268 . 0.24074074074074073))
     ("left-symboldef"
      (0.25609756097560976 . 0.2777777777777778)
      (0.25609756097560976 . 0.24074074074074073)
      (0.25609756097560976 . 0.2222222222222222)
      (0.25609756097560976 . 0.24074074074074073)))))
 '(ecb-primary-secondary-mouse-buttons (quote mouse-1--mouse-2))
 '(org-agenda-files
   (quote
    ("/mnt/hgfs/KevinTian/Document/Emacs.org" "/mnt/hgfs/KevinTian/Document/CRAN_Wiki.org" "/mnt/hgfs/KevinTian/Document/CRAN.org" "/mnt/hgfs/KevinTian/Document/OrgMobile.org" "/mnt/hgfs/KevinTian/Document/Christianity.org" "/mnt/hgfs/KevinTian/_Document/TR.org" "/mnt/hgfs/KevinTian/Document/Book.org" "/mnt/hgfs/KevinTian/Document/Development.org" "/mnt/hgfs/KevinTian/Document/Work/WP_NB_IOT.org" "/mnt/hgfs/KevinTian/Document/Repo_/DocServer/ENC.org" "/mnt/hgfs/KevinTian/Document/Repo_/DocServer/FtGit.org" "/mnt/hgfs/KevinTian/Document/Repo_/DocServer/Tool.org" "/mnt/hgfs/KevinTian/Document/Baby.org" "/mnt/hgfs/KevinTian/Document/English.org" "/mnt/hgfs/KevinTian/Document/Health.org" "/mnt/hgfs/KevinTian/Document/Job.org" "/mnt/hgfs/KevinTian/Document/Living.org" "/mnt/hgfs/KevinTian/Document/Plan.org" "/mnt/hgfs/KevinTian/Document/Shopping.org" "/mnt/hgfs/KevinTian/Document/Study.org" "/mnt/hgfs/KevinTian/Document/Terminology.org" "/mnt/hgfs/KevinTian/Document/Thinking.org" "/mnt/hgfs/KevinTian/Document/ToDo.org" "/mnt/hgfs/KevinTian/Document/Wiki.org" "/mnt/hgfs/KevinTian/Document/Word.org" "/mnt/hgfs/KevinTian/Document/Code.org")))
 '(org-modules
   (quote
    (org-bbdb org-bibtex org-docview org-gnus org-info org-jsinfo org-irc org-mew org-mhe org-rmail org-vm org-wl org-w3m org-pomodoro)))
 '(safe-local-variable-values
   (quote
    ((todo-categories "Todo" "Todo" "Todo")
     (todo-categories "Misc" "Daily" "Movie" "Music" "Sell" "Meeting" "ToBuy" "Question" "LendBorrow" "WeekPlan" "ToDo" "MonthPlan" "BackBeijing" "ENC" "Internet" "HR" "Tool" "BackNanjing" "Working" "Study" "Computer" "BackHome" "BookToBorrow" "Living" "Decoration" "TransToNanjing")
     (todo-categories "Misc" "Daily" "Movie" "Music" "Sell" "Meeting" "ToBuy" "Question" "LendBorrow" "WeekPlan" "ToDo" "MonthPlan" "BackBeijing" "ENC" "Internet" "2010Jan" "HR" "Tool" "BackNanjing" "Working" "Study" "Computer" "BackHome" "BookToBorrow" "Living")
     (todo-categories "Misc" "Daily" "Movie" "Music" "Sell" "Meeting" "ToBuy" "Question" "LendBorrow" "WeekPlan" "ToDo" "MonthPlan" "BackBeijing" "ENC" "Internet" "2010Jan" "HR" "Tool" "Week53" "BackNanjing" "Working" "Study" "Computer" "BackHome" "BookToBorrow" "Week52" "Living")
     (todo-categories "To" "Misc" "Daily" "Movie" "Music" "Sell" "Meeting" "ToBuy" "Question" "LendBorrow" "WeekPlan" "ToDo" "MonthPlan" "BackBeijing" "20100106" "ENC" "Internet" "2010Jan" "HR" "Tool" "Week53" "BackNanjing" "Working" "Study" "Computer" "BackHome" "BookToBorrow" "Week52" "Living")
     (todo-categories "To" "Misc" "Daily" "Movie" "Music" "Sell" "Meeting" "ToBuy" "Question" "LendBorrow" "WeekPlan" "ToDo" "MonthPlan" "20100107" "BackBeijing" "20100106" "ENC" "Internet" "2010Jan" "HR" "Tool" "Week53" "BackNanjing" "Working" "Study" "Computer" "BackHome" "BookToBorrow" "Week52" "Living")
     (todo-categories "Daily" "Movie" "Music" "Sell" "Meeting" "ToBuy" "Question" "LendBorrow" "WeekPlan" "ToDo" "MonthPlan" "20100107" "BackBeijing" "20100106" "ENC" "Internet" "2010Jan" "HR" "Tool" "Week53" "BackNanjing" "Working" "Study" "Computer" "BackHome" "BookToBorrow" "Week52" "Living" "Decoration" "TransToNanjing")
     (todo-categories "带小侠买书" "Movie" "Music" "Sell" "Meeting" "ToBuy" "Question" "LendBorrow" "WeekPlan" "ToDo" "MonthPlan" "20100107" "BackBeijing" "20100106" "ENC" "Internet" "2010Jan" "HR" "Tool" "Week53" "BackNanjing" "Working" "Study" "Computer" "BackHome" "BookToBorrow" "Week52" "Living" "Decoration" "TransToNanjing")
     (todo-categories "20091221" "20091218" "20091217" "20091216" "20091215" "Week52" "20091214" "20091211" "20091210" "Living" "20091209" "decoration" "20091208" "TransToNanjing" "20091207" "Week51" "20091204" "20091203" "20091202" "20091201" "2009Dec" "Week50" "20091130" "20091127" "Tool" "20091126" "20091125" "HR" "20091121" "20091124")
     (todo-categories "Movie" "Music" "Sell" "Meeting" "ToBuy" "Question" "LendBorrow" "WeekPlan" "ToDo" "MonthPlan" "20100107" "BackBeijing" "20100106" "ENC" "Internet" "2010Jan" "HR" "Tool" "Week53" "BackNanjing" "Working" "Study" "Computer" "BackHome" "BookToBorrow" "Week52" "Living" "Decoration" "TransToNanjing")
     (todo-categories "Sell" "Meeting" "ToBuy" "Question" "LendBorrow" "WeekPlan" "ToDo" "MonthPlan" "20100107" "BackBeijing" "20100106" "ENC" "Internet" "2010Jan" "HR" "Tool" "Week53" "BackNanjing" "Working" "Study" "Computer" "BackHome" "BookToBorrow" "Week52" "Living" "Decoration" "TransToNanjing")
     (todo-categories "Meeting" "ToBuy" "Question" "LendBorrow" "WeekPlan" "ToDo" "MonthPlan" "20100107" "BackBeijing" "20100106" "ENC" "Internet" "2010Jan" "HR" "Tool" "Week53" "BackNanjing" "Working" "Study" "Computer" "BackHome" "BookToBorrow" "Week52" "Living" "Decoration" "TransToNanjing")
     (todo-categories "ToBuy" "Question" "LendBorrow" "WeekPlan" "ToDo" "MonthPlan" "20100107" "BackBeijing" "20100106" "ENC" "Internet" "2010Jan" "HR" "Tool" "Week53" "BackNanjing" "Working" "Study" "Computer" "BackHome" "BookToBorrow" "Week52" "Living" "Decoration" "TransToNanjing")
     (todo-categories "LendBorrow" "WeekPlan" "ToDo" "MonthPlan" "20100107" "BackBeijing" "20100106" "ENC" "Internet" "2010Jan" "HR" "Tool" "Week53" "BackNanjing" "Working" "Study" "Computer" "BackHome" "BookToBorrow" "Week52" "Living" "Decoration" "TransToNanjing")
     (todo-categories "WeekPlan" "ToDo" "MonthPlan" "20100107" "BackBeijing" "20100106" "ENC" "Internet" "2010Jan" "HR" "Tool" "Week53" "BackNanjing" "Working" "Study" "Computer" "BackHome" "BookToBorrow" "Week52" "Living" "Decoration" "TransToNanjing")
     (todo-categories "20100107" "BackBeijing" "20100106" "ENC" "Internet" "2010Jan" "HR" "Tool" "Week53" "BackNanjing" "Working" "Study" "Computer" "BackHome" "BookToBorrow" "Week52" "Living" "Decoration" "TransToNanjing")
     (todo-categories "20100107" "BackBeijing" "20100106" "20091224" "ENC" "Internet" "2010Jan" "20100105" "HR" "20100104" "20091231" "Tool" "20091230" "20091229" "20091223" "Week53" "20091222" "BackNanjing" "Working" "Study" "Computer" "BackHome" "BookToBorrow" "20091221" "20091218" "20091217" "20091216" "20091215" "Week52" "20091214")
     (todo-categories "20100107" "BackBeijing" "20100106" "20091224" "ENC" "Internet" "2010Jan" "20100105" "HR" "20100104" "20091231" "Tool" "20091230" "20091229" "20091223" "Week53" "20091222" "BackNanjing" "Working" "Study" "Computer" "BackHome" "BookToBorrow" "20091221" "20091218" "20091217" "20091216" "20091215" "Week52")
     (todo-categories "BackBeijing" "20100106" "20091224" "ENC" "Internet" "2010Jan" "20100105" "HR" "20100104" "20091231" "Tool" "20091230" "20091229" "20091223" "Week53" "20091222" "BackNanjing" "Working" "Study" "Computer" "BackHome" "BookToBorrow" "20091221" "20091218" "20091217" "20091216" "20091215" "Week52" "20091214" "20091211")
     (todo-categories "20100105" "HR" "20100104" "20091231" "Tool" "20091230" "20091229" "20091223" "Week53" "20091222" "BackNanjing" "Working" "Study" "Computer" "BackHome" "BookToBorrow" "20091221" "20091218" "20091217" "20091216" "20091215" "Week52" "20091214" "20091211" "20091210" "Living" "20091209" "decoration" "20091208" "TransToNanjing" "Week51" "20091203" "20091202" "20091201" "2009Dec" "Week50" "20091127" "20091126")
     (todo-categories "20100105" "HR" "20100104" "20091231" "Tool" "20091230" "20091229" "20091223" "Week53" "20091222" "BackNanjing" "Working" "Study" "Computer" "BackHome" "BookToBorrow" "20091221" "20091218" "20091217" "20091216" "20091215" "Week52" "20091214" "20091211" "20091210" "Living" "20091209")
     (todo-categories "20100105" "HR" "20100104" "20091231" "Tool" "20091230" "20091229" "20091223" "Week53" "20091222" "BackNanjing" "Working" "Study" "Computer" "BackHome" "BookToBorrow" "20091221" "20091218" "20091217" "20091216" "20091215" "Week52" "20091214" "20091211" "20091210" "Living" "20091209" "decoration" "20091208" "TransToNanjing")
     (todo-categories "HR" "20100104" "20091231" "Tool" "20091230" "20091229" "20091223" "Week53" "20091222" "BackNanjing" "Working" "Study" "Computer" "BackHome" "BookToBorrow" "20091221" "20091218" "20091217" "20091216" "20091215" "Week52" "20091214" "20091211" "20091210" "Living" "20091209" "decoration" "20091208" "TransToNanjing")
     (todo-categories "HR" "20100104" "20091231" "Tool" "20091230" "20091229" "20091223" "Week53" "20091222" "BackNanjing" "Working" "Study" "Computer" "BackHome" "BookToBorrow" "20091221" "20091218" "20091217" "20091216" "20091215" "Week52" "20091214" "20091211" "20091210" "Living" "20091209" "decoration" "20091208" "TransToNanjing" "20091207")))))




;; removed for ubuntu
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; Resize Emacs, Should be place in the end of file
;; (w32-maximize-frame)

;; ;; (w32-restore-frame)
;; ;; (w32-restore-frame)
;; ;; (w32-maximize-frame)
;; ;; (w32-restore-frame)
;; ;; (w32-maximize-frame)
;; ;; (w32-restore-frame)
;; ;; (w32-maximize-frame)
;; ;; (w32-restore-frame)
;; ;; (w32-maximize-frame)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Start up



(setq comment-start nil)


(put 'narrow-to-region 'disabled nil) 


(put 'upcase-region 'disabled nil)

;; start manually
;; bm my_cedet_path
;; (load "my_cedet_path")
(load "my_key")
(load "my_last")
(put 'icicle-occur 'disabled nil)




(message "SUCCESSFULLY LOAD ALL CONFIGURATION FILES!");

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PUT IN THE END, IF FAIL NOT AFFECT OTHER BOOT SCRIPT
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; only show calenda of today
;; if file in the org-mobile-files do not exist error will occur
;; Non-existent agenda file /mnt/hgfs/KevinTian/Document/Repo_/DocServer/FtGit.txt.  [R]emove from list or [A]bort?
(org-agenda-list 3)
