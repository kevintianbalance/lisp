;; (setq org-agenda-files (list "~/org/OrgTutorial.org"))

;; ;;make it smaller to avoid crash
;; (custom-set-variables
;;  '(org-agenda-files (quote ("c:/KevinTian/Document/Repo_/DocServer/ENC.txt" "c:/KevinTian/Document/Repo_/DocServer/FtGit.txt" "c:/KevinTian/Document/Repo_/DocServer/Tool.txt" "c:/KevinTian/Document/Baby.txt" "c:/KevinTian/Document/Bash.txt" "c:/KevinTian/Document/Book.txt" "c:/KevinTian/Document/Calligraphy.txt" "c:/KevinTian/Document/Christianity.txt" "c:/KevinTian/Document/Code.txt" "c:/KevinTian/Document/Contact.txt" "c:/KevinTian/Document/Development.txt" "c:/KevinTian/Document/Digest.txt" "c:/KevinTian/Document/Emacs.txt" "c:/KevinTian/Document/English.txt" "c:/KevinTian/Document/Health.txt" "c:/KevinTian/Document/Job.txt" "c:/KevinTian/Document/Living.txt" "c:/KevinTian/Document/Mail.txt" "c:/KevinTian/Document/Money.txt" "c:/KevinTian/Document/Movie.txt" "c:/KevinTian/Document/OrgMobile.txt" "c:/KevinTian/Document/People.txt" "c:/KevinTian/Document/Perl.txt" "c:/KevinTian/Document/Plan.txt" "c:/KevinTian/Document/Shopping.txt" "c:/KevinTian/Document/Study.txt" "c:/KevinTian/Document/Terminology.txt" "c:/KevinTian/Document/Thinking.txt" "c:/KevinTian/Document/ToDo.txt" "c:/KevinTian/Document/Wiki.txt" "c:/KevinTian/Document/Word.txt" "c:/KevinTian/Document/Code.txt")))
;; )

(custom-set-variables
 '(org-agenda-files (quote ("c:/KevinTian/Document/Repo_/DocServer/ENC.txt" "c:/KevinTian/Document/Repo_/DocServer/FtGit.txt" "c:/KevinTian/Document/Repo_/DocServer/Tool.txt" "c:/KevinTian/Document/Baby.txt" "c:/KevinTian/Document/English.txt" "c:/KevinTian/Document/Health.txt" "c:/KevinTian/Document/Job.txt" "c:/KevinTian/Document/Living.txt" "c:/KevinTian/Document/Plan.txt" "c:/KevinTian/Document/Shopping.txt" "c:/KevinTian/Document/Study.txt" "c:/KevinTian/Document/Terminology.txt" "c:/KevinTian/Document/Thinking.txt" "c:/KevinTian/Document/ToDo.txt" "c:/KevinTian/Document/Wiki.txt" "c:/KevinTian/Document/Word.txt" "c:/KevinTian/Document/Code.txt" "c:/KevinTian/Document/CRAN.txt")))
)

;; (setq org-mobile-files (quote (
;; 			       "c:/KevinTian/Document/Repo_/DocServer/ENC.txt" "c:/KevinTian/Document/Repo_/DocServer/FtGit.txt" "c:/KevinTian/Document/Repo_/DocServer/Tool.txt" "c:/KevinTian/Document/Baby.txt" "c:/KevinTian/Document/Book.txt" "c:/KevinTian/Document/Calligraphy.txt" "c:/KevinTian/Document/Christianity.txt" "c:/KevinTian/Document/Contact.txt" "c:/KevinTian/Document/Development.txt" "c:/KevinTian/Document/ENC.txt" "c:/KevinTian/Document/Emacs.txt" "c:/KevinTian/Document/English.txt" "c:/KevinTian/Document/Health.txt" "c:/KevinTian/Document/Living.txt" "c:/KevinTian/Document/Mail.txt" "c:/KevinTian/Document/Money.txt" "c:/KevinTian/Document/Movie.txt" "c:/KevinTian/Document/OrgMobile.txt" "c:/KevinTian/Document/People.txt" "c:/KevinTian/Document/Perl.txt" "c:/KevinTian/Document/Plan.txt" "c:/KevinTian/Document/Shopping.txt" "c:/KevinTian/Document/Study.txt" "c:/KevinTian/Document/Terminology.txt" "c:/KevinTian/Document/Thinking.txt" "c:/KevinTian/Document/ToDo.txt" "c:/KevinTian/Document/Wiki.txt" "c:/KevinTian/Document/Word.txt" 
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
	("noexport" . ?n)
	("@16Week05" . nil) 
	("@16Week06" . nil) 
	("@16Week07" . nil) 
	("@16Week08" . nil) 
	("@16Week09" . nil) 
	("@16Week10" . nil) 
	("@16Week11" . nil) 
	("@16Week12" . nil) 
	("@16Week13" . nil) 
	("@16Week14" . nil) 
	("@2016Jan" . nil)
	("@2016Feb" . nil)
	("@2016Mar" . nil)
	("@2016Apr" . nil)
	("@2016May" . nil)
	("@2016Jun" . nil)
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
;; 	("e" "ENC.txt Todo" entry (file+headline "c:/KevinTian/Document/DocServer/ENC.txt" "Z_CAPTURE_")
;; 	 "* TODO %?\n %i\n %a")
;; 	("t" "Tool.txt Todo" entry (file+headline "c:/KevinTian/Document/DocServer/Tool.txt" "Z_CAPTURE_")
;; 	 "* TODO %?\n %i\n %a")
;; 	("h" "Health.txt Todo" entry (file+headline "c:/KevinTian/Document/Health.txt" "Z_CAPTURE_")
;; 	 "* TODO %?\n %i\n %<%Y-%m-%d>">)
;; 	("s" "Shopping.txt Todo" entry (file+headline "c:/KevinTian/Document/Shopping.txt" "Z_CAPTURE_")
;; 	 "* TODO %?\n %i\n %a")
;; 	("l" "Living.txt Todo" entry (file+headline "c:/KevinTian/Document/Living.txt" "Z_CAPTURE_")
;; 	 "* TODO %?\n %i\n %a")
;; 	("b" "Baby.txt Todo" entry (file+headline "c:/KevinTian/Document/Baby.txt" "Z_CAPTURE_")
;; 	 "* TODO %?\n %i\n %a")
;; 	("d" "Study.txt Todo" entry (file+headline "c:/KevinTian/Document/Study.txt" "Z_CAPTURE_")
;; 	 "* TODO %?\n %i\n %a")
;; 	("j" "Diary.txt Todo" entry (file+headline "t:/Diary.txt" "Daily Diary")
;; 	 "* TODO %?\n %i\n %a")
;; 	("w" "Word.txt Todo" entry (file+headline "c:/KevinTian/Document/Word.txt" "Z_CAPTURE_")
;; 	 "* %?\n %i\n")
;; 	("m" "OrgMobile.txt Todo" entry (file+headline "c:/KevinTian/Document/OrgMobile.txt" "Z_CAPTURE_")
;; 	 "* %?\n %i\n")
;; ))


; |---+------------------------|
; | b | Baby.txt               |
; | B | Book.txt               |
; | 1 | BookmarkAll.txt        |
; | c | CRAN.txt               |
; | 2 | CRAN.txt               |
; | 2 | CRAN.txt               |
; | 3 | Christianity.txt       |
; | 4 | CloudRanDeployment.txt |
; | 5 | Code.txt               |
; | C | Communication.txt      |
; | 7 | Contact.txt            |
; | d | Development.txt        |
; | D | Diagram.txt            |
; | 8 | Diary.txt              |
; | 9 | Digest.txt             |
; | e | Emacs.txt              |
; | E | English.txt            |
; | 0 | eNBTest.txt            |
; | f | FtGit.txt              |
; | h | Health.txt             |
; | j | Job.txt                |
; | l | Living.txt             |
; | m | Mail.txt               |
; | M | Money.txt              |
; | . | Movie.txt              |
; | o | OrgMobile.txt          |
; | p | People.txt             |
; | P | Plan.txt               |
; | s | Shopping.txt           |
; | S | Study.txt              |
; | t | ToDo.txt               |
; | T | Tool.txt               |
; | w | Wiki.txt               |
; | W | Word.txt               |
; |---+------------------------|
(setq org-capture-templates
      '(
	("b" "Baby.txt Z_CAPTURE_" entry (file+headline "c:/KevinTian/Document/Baby.txt" "Z_CAPTURE_")                             
	 "* TODO %?\n%T")                                                                                  
	("B" "Book.txt Z_CAPTURE_" entry (file+headline "c:/KevinTian/Document/Book.txt" "Z_CAPTURE_")                             
	 "* TODO %?\n%T")                                                                                  
	("1" "BookmarkAll.txt Z_CAPTURE_" entry (file+headline "c:/KevinTian/Document/BookmarkAll.txt" "Z_CAPTURE_")               
	 "* TODO %?\n%T")                                                                                  
	("c" "CRAN.txt Z_CAPTURE_" entry (file+headline "c:/KevinTian/Document/CRAN.txt" "Z_CAPTURE_")                             
	 "* TODO %?\n%T")                                                                                  
	("2" "CRAN.txt Z_KeyTrace_" entry (file+headline "c:/KevinTian/Document/CRAN.txt" "Z_KeyTrace_")                            
	 "* %?\n%T")                                                                                                          
	("3" "CRAN.txt Setup Cloud BJ_" entry (file+headline "c:/KevinTian/Document/CRAN.txt" "Setup Cloud BJ")                         
	 "* %?\n%T")                                                                                                          
	("4" "Christianity.txt Z_CAPTURE_" entry (file+headline "c:/KevinTian/Document/Christianity.txt" "Z_CAPTURE_")             
	 "* TODO %?\n%T")                                                                                  
	("5" "CloudRanDeployment.txt Z_CAPTURE_" entry (file+headline "c:/KevinTian/Document/CloudRanDeployment.txt" "Z_CAPTURE_") 
	 "* TODO %?\n%T")                                                                                  
	("6" "Code.txt Z_CAPTURE_" entry (file+headline "c:/KevinTian/Document/Code.txt" "Z_CAPTURE_")                             
	 "* TODO %?\n%T")                                                                                  
	("C" "Communication.txt Z_CAPTURE_" entry (file+headline "c:/KevinTian/Document/Communication.txt" "Z_CAPTURE_")           
	 "* TODO %?\n%T")                                                                                  
	("7" "Contact.txt Z_CAPTURE_" entry (file+headline "c:/KevinTian/Document/Contact.txt" "Z_CAPTURE_")                       
	 "* TODO %?\n%T")                                                                                  
	("d" "Development.txt Z_CAPTURE_" entry (file+headline "c:/KevinTian/Document/Development.txt" "Z_CAPTURE_")               
	 "* TODO %?\n%T")                                                                                  
	("D" "Diagram.txt Z_CAPTURE_" entry (file+headline "c:/KevinTian/Document/Diagram.txt" "Z_CAPTURE_")                       
	 "* TODO %?\n%T")                                                                                  
	("8" "Diary.txt Z_CAPTURE_" entry (file+headline "t:/Diary.txt" "Z_CAPTURE_")                                              
	 "* TODO %?\n%T")                                                                                  
	("9" "Digest.txt Z_CAPTURE_" entry (file+headline "c:/KevinTian/Document/Digest.txt" "Z_CAPTURE_")                         
	 "* TODO %?\n%T")                                                                                  
	("e" "Emacs.txt Z_CAPTURE_" entry (file+headline "c:/KevinTian/Document/Emacs.txt" "Z_CAPTURE_")                           
	 "* TODO %?\n%T")                                                                                  
	("E" "English.txt Z_CAPTURE_" entry (file+headline "c:/KevinTian/Document/English.txt" "Z_CAPTURE_")                       
	 "* TODO %?\n%T")                                                                                  
	("0" "ENBTest.txt Z_CAPTURE_" entry (file+headline "c:/KevinTian/Document/eNBTest.txt" "Z_CAPTURE_")                       
	 "* TODO %?\n%T")                                                                                  
	("f" "FtGit.txt Z_CAPTURE_" entry (file+headline "c:/KevinTian/Document/Repo_/DocServer/FtGit.txt" "Z_CAPTURE_")           
	 "* TODO %?\n%T")                                                                                  
	("h" "Health.txt Z_CAPTURE_" entry (file+headline "c:/KevinTian/Document/Health.txt" "Z_CAPTURE_")                         
	 "* TODO %?\n%T")                                                                                  
	("j" "Job.txt Z_CAPTURE_" entry (file+headline "c:/KevinTian/Document/Job.txt" "Z_CAPTURE_")                               
	 "* TODO %?\n%T")                                                                                  
	("l" "Living.txt Z_CAPTURE_" entry (file+headline "c:/KevinTian/Document/Living.txt" "Z_CAPTURE_")                         
	 "* TODO %?\n%T")                                                                                  
	("m" "Mail.txt Z_CAPTURE_" entry (file+headline "c:/KevinTian/Document/Mail.txt" "Z_CAPTURE_")                             
	 "* TODO %?\n%T")                                                                                  
	("M" "Money.txt Z_CAPTURE_" entry (file+headline "c:/KevinTian/Document/Money.txt" "Z_CAPTURE_")                           
	 "* TODO %?\n%T")                                                                                  
	("." "Movie.txt Z_CAPTURE_" entry (file+headline "c:/KevinTian/Document/Movie.txt" "Z_CAPTURE_")                           
	 "* TODO %?\n%T")                                                                                  
	("o" "OrgMobile.txt Z_CAPTURE_" entry (file+headline "c:/KevinTian/Document/OrgMobile.txt" "Z_CAPTURE_")                   
	 "* TODO %?\n%T")                                                                                  
	("p" "People.txt Z_CAPTURE_" entry (file+headline "c:/KevinTian/Document/People.txt" "Z_CAPTURE_")                         
	 "* TODO %?\n%T")                                                                                  
	("P" "Plan.txt Z_CAPTURE_" entry (file+headline "c:/KevinTian/Document/Plan.txt" "Z_CAPTURE_")                             
	 "* TODO %?\n%T")                                                                                  
	("s" "Shopping.txt Z_CAPTURE_" entry (file+headline "c:/KevinTian/Document/Shopping.txt" "Z_CAPTURE_")                     
	 "* TODO %?\n%T")                                                                                  
	("S" "Study.txt Z_CAPTURE_" entry (file+headline "c:/KevinTian/Document/Study.txt" "Z_CAPTURE_")                           
	 "* TODO %?\n%T")                                                                                  
	("t" "ToDo.txt Z_CAPTURE_" entry (file+headline "c:/KevinTian/Document/ToDo.txt" "Z_CAPTURE_")                             
	 "* TODO %?\n%T")                                                                                  
	("T" "Tool.txt Z_CAPTURE_" entry (file+headline "c:/KevinTian/Document/Repo_/DocServer/Tool.txt" "Z_CAPTURE_")             
	 "* TODO %?\n%T")                                                                                  
	("w" "Wiki.txt Z_CAPTURE_" entry (file+headline "c:/KevinTian/Document/Wiki.txt" "Z_CAPTURE_")                             
	 "* TODO %?\n%T")                                                                                  
	("W" "Word.txt Z_CAPTURE_" entry (file+headline "c:/KevinTian/Document/Word.txt" "Z_CAPTURE_")                             
	 "* TODO %?\n%T")                                                                                  
))

