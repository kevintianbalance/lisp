;; (setq org-agenda-files (list "~/org/OrgTutorial.org"))

;; ;;make it smaller to avoid crash
;; (custom-set-variables
;;  '(org-agenda-files (quote ("/mnt/hgfs/KevinTian/Document/Repo_/DocServer/ENC.org" "/mnt/hgfs/KevinTian/Document/Repo_/DocServer/FtGit.org" "/mnt/hgfs/KevinTian/Document/Repo_/DocServer/Tool.org" "/mnt/hgfs/KevinTian/Document/Baby.org" "/mnt/hgfs/KevinTian/Document/Bash.org" "/mnt/hgfs/KevinTian/Document/Book.org" "/mnt/hgfs/KevinTian/Document/Calligraphy.org" "/mnt/hgfs/KevinTian/Document/Christianity.org" "/mnt/hgfs/KevinTian/Document/Code.org" "/mnt/hgfs/KevinTian/Document/Contact.org" "/mnt/hgfs/KevinTian/Document/Development.org" "/mnt/hgfs/KevinTian/Document/Digest.org" "/mnt/hgfs/KevinTian/Document/Emacs.org" "/mnt/hgfs/KevinTian/Document/English.org" "/mnt/hgfs/KevinTian/Document/Health.org" "/mnt/hgfs/KevinTian/Document/Job.org" "/mnt/hgfs/KevinTian/Document/Living.org" "/mnt/hgfs/KevinTian/Document/Mail.org" "/mnt/hgfs/KevinTian/Document/Money.org" "/mnt/hgfs/KevinTian/Document/Movie.org" "/mnt/hgfs/KevinTian/Document/OrgMobile.org" "/mnt/hgfs/KevinTian/Document/People.org" "/mnt/hgfs/KevinTian/Document/Perl.org" "/mnt/hgfs/KevinTian/Document/Plan.org" "/mnt/hgfs/KevinTian/Document/Shopping.org" "/mnt/hgfs/KevinTian/Document/Study.org" "/mnt/hgfs/KevinTian/Document/Terminology.org" "/mnt/hgfs/KevinTian/Document/Thinking.org" "/mnt/hgfs/KevinTian/Document/ToDo.org" "/mnt/hgfs/KevinTian/Document/Wiki.org" "/mnt/hgfs/KevinTian/Document/Word.org" "/mnt/hgfs/KevinTian/Document/Code.org")))
;; )

(custom-set-variables
 '(org-agenda-files (quote ("/mnt/hgfs/KevinTian/Document/Repo_/DocServer/ENC.org" "/mnt/hgfs/KevinTian/Document/Repo_/DocServer/FtGit.org" "/mnt/hgfs/KevinTian/Document/Repo_/DocServer/Tool.org" "/mnt/hgfs/KevinTian/Document/Baby.org" "/mnt/hgfs/KevinTian/Document/English.org" "/mnt/hgfs/KevinTian/Document/Health.org" "/mnt/hgfs/KevinTian/Document/Job.org" "/mnt/hgfs/KevinTian/Document/Living.org" "/mnt/hgfs/KevinTian/Document/Plan.org" "/mnt/hgfs/KevinTian/Document/Shopping.org" "/mnt/hgfs/KevinTian/Document/Study.org" "/mnt/hgfs/KevinTian/Document/Terminology.org" "/mnt/hgfs/KevinTian/Document/Thinking.org" "/mnt/hgfs/KevinTian/Document/ToDo.org" "/mnt/hgfs/KevinTian/Document/Wiki.org" "/mnt/hgfs/KevinTian/Document/Word.org" "/mnt/hgfs/KevinTian/Document/Code.org" "/mnt/hgfs/KevinTian/Document/CRAN.org")))
)

;; (setq org-mobile-files (quote (
;; 			       "/mnt/hgfs/KevinTian/Document/Repo_/DocServer/ENC.org" "/mnt/hgfs/KevinTian/Document/Repo_/DocServer/FtGit.org" "/mnt/hgfs/KevinTian/Document/Repo_/DocServer/Tool.org" "/mnt/hgfs/KevinTian/Document/Baby.org" "/mnt/hgfs/KevinTian/Document/Book.org" "/mnt/hgfs/KevinTian/Document/Calligraphy.org" "/mnt/hgfs/KevinTian/Document/Christianity.org" "/mnt/hgfs/KevinTian/Document/Contact.org" "/mnt/hgfs/KevinTian/Document/Development.org" "/mnt/hgfs/KevinTian/Document/ENC.org" "/mnt/hgfs/KevinTian/Document/Emacs.org" "/mnt/hgfs/KevinTian/Document/English.org" "/mnt/hgfs/KevinTian/Document/Health.org" "/mnt/hgfs/KevinTian/Document/Living.org" "/mnt/hgfs/KevinTian/Document/Mail.org" "/mnt/hgfs/KevinTian/Document/Money.org" "/mnt/hgfs/KevinTian/Document/Movie.org" "/mnt/hgfs/KevinTian/Document/OrgMobile.org" "/mnt/hgfs/KevinTian/Document/People.org" "/mnt/hgfs/KevinTian/Document/Perl.org" "/mnt/hgfs/KevinTian/Document/Plan.org" "/mnt/hgfs/KevinTian/Document/Shopping.org" "/mnt/hgfs/KevinTian/Document/Study.org" "/mnt/hgfs/KevinTian/Document/Terminology.org" "/mnt/hgfs/KevinTian/Document/Thinking.org" "/mnt/hgfs/KevinTian/Document/ToDo.org" "/mnt/hgfs/KevinTian/Document/Wiki.org" "/mnt/hgfs/KevinTian/Document/Word.org" 
;; 			       )))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Date: 2015_01_08_143138
;; Content:  TAGS
;; nil one will auto assign a character
;; :@@@@@:
;; (setq org-tag-alist '(("@work" . ?w) ("@lucy" . nil) ("@home" . ?h) ("@laptop" . ?l)))


;; (setq org-tag-alist '((:startgroup . nil)
;; 		       ("@read" . nil)
;; 		       (:grouptags . nil)
;; 		       ("@read_book" . nil)
;; 		       ("@read_ebook" . nil)
;; 		       (:endgroup . nil)))

(setq org-tag-alist 
      '(("@Ques" . ?q) 
	("@" . ?1) 
	("@@" . ?2) 
	("@@@" . ?3) 
	("@@@@" . ?4) 
	("@@@@@" . ?5)
	("@@@@@@" . ?6)
	("@BackHome" . ?b)
	("export" . ?e)
	("noexport" . ?n)
	("@2016Jan" . nil)
	("@2016Feb" . nil)
	("@2016Mar" . nil)
	("@2016Apr" . nil)
	("@2016May" . nil)
	("@2016Jun" . nil)
	("@16Week21" . nil) 
	("@16Week22" . nil) 
	("@16Week23" . nil) 
	("@16Week24" . nil) 
	("@16Week25" . nil) 
	("@16Week26" . nil) 
	("@16Week27" . nil) 
	("@16Week28" . nil) 
	("@16Week29" . nil) 
	("@16Week30" . nil) 
	)
      )


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Org-Capture Template

;; http://sachachua.com/blog/2010/11/emacs-recording-ledger-entries-with-org-capture-templates/
;; (setq org-capture-templates
;;       (append '(("l" "Ledger entries")
;;                 ("lm" "MBNA" plain
;;                  (file "~/personal/ledger")
;;                  "%(org-read-date) %^{Payee}
;;   Liabilities:MBNA  
;;   Expenses:%^{Account}  %^{Amount}
;; ")
;;                 ("lc" "Cash" plain
;; 		 (file "~/personal/ledger")
;; 		 "%(org-read-date) * %^{Payee}
;;   Expenses:Cash 
;;   Expenses:%^{Account}  %^{Amount}
;; "))
;; 	      org-capture-templates))


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; Date: 2015_01_19_165615
;; ;; Content: replaced with new template 
;; (setq org-capture-templates
;;       '(
;; 	("e" "ENC.org Todo" entry (file+headline "/mnt/hgfs/KevinTian/Document/DocServer/ENC.org" "Z_CAPTURE_")
;; 	 "* TODO %?\n %i\n %a")
;; 	("t" "Tool.org Todo" entry (file+headline "/mnt/hgfs/KevinTian/Document/DocServer/Tool.org" "Z_CAPTURE_")
;; 	 "* TODO %?\n %i\n %a")
;; 	("h" "Health.org Todo" entry (file+headline "/mnt/hgfs/KevinTian/Document/Health.org" "Z_CAPTURE_")
;; 	 "* TODO %?\n %i\n %<%Y-%m-%d>">)
;; 	("s" "Shopping.org Todo" entry (file+headline "/mnt/hgfs/KevinTian/Document/Shopping.org" "Z_CAPTURE_")
;; 	 "* TODO %?\n %i\n %a")
;; 	("l" "Living.org Todo" entry (file+headline "/mnt/hgfs/KevinTian/Document/Living.org" "Z_CAPTURE_")
;; 	 "* TODO %?\n %i\n %a")
;; 	("b" "Baby.org Todo" entry (file+headline "/mnt/hgfs/KevinTian/Document/Baby.org" "Z_CAPTURE_")
;; 	 "* TODO %?\n %i\n %a")
;; 	("d" "Study.org Todo" entry (file+headline "/mnt/hgfs/KevinTian/Document/Study.org" "Z_CAPTURE_")
;; 	 "* TODO %?\n %i\n %a")
;; 	("j" "Diary.org Todo" entry (file+headline "t:/Diary.org" "Daily Diary")
;; 	 "* TODO %?\n %i\n %a")
;; 	("w" "Word.org Todo" entry (file+headline "/mnt/hgfs/KevinTian/Document/Word.org" "Z_CAPTURE_")
;; 	 "* %?\n %i\n")
;; 	("m" "OrgMobile.org Todo" entry (file+headline "/mnt/hgfs/KevinTian/Document/OrgMobile.org" "Z_CAPTURE_")
;; 	 "* %?\n %i\n")
;; ))


; |---+------------------------|
; | b | Baby.org               |
; | B | Book.org               |
; | 1 | BookmarkAll.org        |
; | c | CRAN.org               |
; | 2 | CRAN.org               |
; | 2 | CRAN.org               |
; | 3 | Christianity.org       |
; | 4 | CloudRanDeployment.org |
; | 5 | Code.org               |
; | C | Communication.org      |
; | 7 | Contact.org            |
; | d | Development.org        |
; | D | Diagram.org            |
; | 8 | Diary.org              |
; | 9 | Digest.org             |
; | e | Emacs.org              |
; | E | English.org            |
; | 0 | eNBTest.org            |
; | f | FtGit.org              |
; | h | Health.org             |
; | j | Job.org                |
; | l | Living.org             |
; | m | Mail.org               |
; | M | Money.org              |
; | . | Movie.org              |
; | o | OrgMobile.org          |
; | p | People.org             |
; | P | Plan.org               |
; | s | Shopping.org           |
; | S | Study.org              |
; | t | ToDo.org               |
; | T | Tool.org               |
; | w | Wiki.org               |
; | W | Word.org               |
; |---+------------------------|
(setq org-capture-templates
      '(
	("b" "Baby.org Z_CAPTURE_" entry (file+headline "/mnt/hgfs/KevinTian/Document/Baby.org" "Z_CAPTURE_")                             
	 "* %?\n%T")                                                                                  
	("B" "Book.org Z_CAPTURE_" entry (file+headline "/mnt/hgfs/KevinTian/Document/Book.org" "Z_CAPTURE_")                             
	 "* %?\n%T")                                                                                  
	("1" "BookmarkAll.org Z_CAPTURE_" entry (file+headline "/mnt/hgfs/KevinTian/Document/BookmarkAll.org" "Z_CAPTURE_")               
	 "* %?\n%T")                                                                                  
	("c" "CRAN.org Z_CAPTURE_" entry (file+headline "/mnt/hgfs/KevinTian/Document/CRAN.org" "Z_CAPTURE_")                             
	 "* %?\n%T")                                                                                  
	("2" "CRAN.org Z_KeyTrace_" entry (file+headline "/mnt/hgfs/KevinTian/Document/CRAN.org" "Z_KeyTrace_")                            
	 "* %?\n%T")                                                                                                          
	("3" "CRAN.org Setup Cloud BJ_" entry (file+headline "/mnt/hgfs/KevinTian/Document/CRAN.org" "Setup Cloud BJ")                         
	 "* %?\n%T")                                                                                                          
	("4" "Christianity.org Z_CAPTURE_" entry (file+headline "/mnt/hgfs/KevinTian/Document/Christianity.org" "Z_CAPTURE_")             
	 "* %?\n%T")                                                                                  
	("5" "CloudRanDeployment.org Z_CAPTURE_" entry (file+headline "/mnt/hgfs/KevinTian/Document/CloudRanDeployment.org" "Z_CAPTURE_") 
	 "* %?\n%T")                                                                                  
	("6" "Code.org Z_CAPTURE_" entry (file+headline "/mnt/hgfs/KevinTian/Document/Code.org" "Z_CAPTURE_")                             
	 "* %?\n%T")                                                                                  
	("C" "Communication.org Z_CAPTURE_" entry (file+headline "/mnt/hgfs/KevinTian/Document/Communication.org" "Z_CAPTURE_")           
	 "* %?\n%T")                                                                                  
	("7" "Contact.org Z_CAPTURE_" entry (file+headline "/mnt/hgfs/KevinTian/Document/Contact.org" "Z_CAPTURE_")                       
	 "* %?\n%T")                                                                                  
	("d" "Development.org Z_CAPTURE_" entry (file+headline "/mnt/hgfs/KevinTian/Document/Development.org" "Z_CAPTURE_")               
	 "* %?\n%T")                                                                                  
	("D" "Diagram.org Z_CAPTURE_" entry (file+headline "/mnt/hgfs/KevinTian/Document/Diagram.org" "Z_CAPTURE_")                       
	 "* %?\n%T")                                                                                  
	("8" "Diary.org Z_CAPTURE_" entry (file+headline "t:/Diary.org" "Z_CAPTURE_")                                              
	 "* %?\n%T")                                                                                  
	("9" "Digest.org Z_CAPTURE_" entry (file+headline "/mnt/hgfs/KevinTian/Document/Digest.org" "Z_CAPTURE_")                         
	 "* %?\n%T")                                                                                  
	("e" "Emacs.org Z_CAPTURE_" entry (file+headline "/mnt/hgfs/KevinTian/Document/Emacs.org" "Z_CAPTURE_")                           
	 "* %?\n%T")                                                                                  
	("E" "English.org Z_CAPTURE_" entry (file+headline "/mnt/hgfs/KevinTian/Document/English.org" "Z_CAPTURE_")                       
	 "* %?\n%T")                                                                                  
	("0" "ENBTest.org Z_CAPTURE_" entry (file+headline "/mnt/hgfs/KevinTian/Document/eNBTest.org" "Z_CAPTURE_")                       
	 "* %?\n%T")                                                                                  
	("f" "FtGit.org Z_CAPTURE_" entry (file+headline "/mnt/hgfs/KevinTian/Document/Repo_/DocServer/FtGit.org" "Z_CAPTURE_")           
	 "* %?\n%T")                                                                                  
	("h" "Health.org Z_CAPTURE_" entry (file+headline "/mnt/hgfs/KevinTian/Document/Health.org" "Z_CAPTURE_")                         
	 "* %?\n%T")                                                                                  
	("j" "Job.org Z_CAPTURE_" entry (file+headline "/mnt/hgfs/KevinTian/Document/Job.org" "Z_CAPTURE_")                               
	 "* %?\n%T")                                                                                  
	("l" "Living.org Z_CAPTURE_" entry (file+headline "/mnt/hgfs/KevinTian/Document/Living.org" "Z_CAPTURE_")                         
	 "* %?\n%T")                                                                                  
	("m" "Mail.org Z_CAPTURE_" entry (file+headline "/mnt/hgfs/KevinTian/Document/Mail.org" "Z_CAPTURE_")                             
	 "* %?\n%T")                                                                                  
	("M" "Money.org Z_CAPTURE_" entry (file+headline "/mnt/hgfs/KevinTian/Document/Money.org" "Z_CAPTURE_")                           
	 "* %?\n%T")                                                                                  
	("." "Movie.org Z_CAPTURE_" entry (file+headline "/mnt/hgfs/KevinTian/Document/Movie.org" "Z_CAPTURE_")                           
	 "* %?\n%T")                                                                                  
	("," "Music.org Z_CAPTURE_" entry (file+headline "/mnt/hgfs/KevinTian/Document/Music.org" "Z_CAPTURE_")                           
	 "* %?\n%T")                                                                                  
	("o" "OrgMobile.org Z_CAPTURE_" entry (file+headline "/mnt/hgfs/KevinTian/Document/OrgMobile.org" "Z_CAPTURE_")                   
	 "* %?\n%T")                                                                                  
	("p" "People.org Z_CAPTURE_" entry (file+headline "/mnt/hgfs/KevinTian/Document/People.org" "Z_CAPTURE_")                         
	 "* %?\n%T")                                                                                  
	("P" "Plan.org Z_CAPTURE_" entry (file+headline "/mnt/hgfs/KevinTian/Document/Plan.org" "Z_CAPTURE_")                             
	 "* %?\n%T")                                                                                  
	("s" "Shopping.org Z_CAPTURE_" entry (file+headline "/mnt/hgfs/KevinTian/Document/Shopping.org" "Z_CAPTURE_")                     
	 "* %?\n%T")                                                                                  
	("S" "Study.org Z_CAPTURE_" entry (file+headline "/mnt/hgfs/KevinTian/Document/Study.org" "Z_CAPTURE_")                           
	 "* %?\n%T")                                                                                  
	("t" "ToDo.org Z_CAPTURE_" entry (file+headline "/mnt/hgfs/KevinTian/Document/ToDo.org" "Z_CAPTURE_")                             
	 "* %?\n%T")                                                                                  
	("T" "Tool.org Z_CAPTURE_" entry (file+headline "/mnt/hgfs/KevinTian/Document/Repo_/DocServer/Tool.org" "Z_CAPTURE_")             
	 "* %?\n%T")                                                                                  
	("w" "Wiki.org Z_CAPTURE_" entry (file+headline "/mnt/hgfs/KevinTian/Document/Wiki.org" "Z_CAPTURE_")                             
	 "* %?\n%T")                                                                                  
	("W" "Word.org Z_CAPTURE_" entry (file+headline "/mnt/hgfs/KevinTian/Document/Word.org" "Z_CAPTURE_")                             
	 "* %?\n%T")                                                                                  
))

