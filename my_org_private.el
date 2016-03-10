\;; (setq org-agenda-files (list "~/org/OrgTutorial.org"))

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

(setq org-capture-templates
      '(
	("1" "Perl.txt Todo" entry (file+headline "c:/KevinTian/Document/Perl.txt" "Z_CAPTURE_")
	 "* TODO %<%Y_%m_%d_%H%M%S> %?\n%T")
	("2" "Plan.txt Todo" entry (file+headline "c:/KevinTian/Document/Plan.txt" "Z_CAPTURE_")
	 "* TODO %<%Y_%m_%d_%H%M%S> %?\n%T")
	("3" "Terminology.txt Todo" entry (file+headline "c:/KevinTian/Document/Terminology.txt" "Z_CAPTURE_")
	 "* TODO %<%Y_%m_%d_%H%M%S> %?\n%T")
	("4" "Thinking.txt Todo" entry (file+headline "c:/KevinTian/Document/Thinking.txt" "Z_CAPTURE_")
	 "* TODO %<%Y_%m_%d_%H%M%S> %?\n%T")
	("5" "ToDo.txt Todo" entry (file+headline "c:/KevinTian/Document/ToDo.txt" "Z_CAPTURE_")
	 "* TODO %<%Y_%m_%d_%H%M%S> %?\n%T")
	("6" "Wiki.txt Todo" entry (file+headline "c:/KevinTian/Document/Wiki.txt" "Z_CAPTURE_")
	 "* TODO %<%Y_%m_%d_%H%M%S> %?\n%T")
	;; ("7" "ENC.txt Todo" entry (file+headline "c:/KevinTian/Document/Repo_/DocServer/ENC.txt" "Z_CAPTURE_")
	;;  "* TODO %<%Y_%m_%d_%H%M%S> %?\n%T")
	("7" "eNBTest.txt Todo" entry (file+headline "c:/KevinTian/Document/eNBTest.txt" "Z_CAPTURE_")
	 "* TODO %<%Y_%m_%d_%H%M%S> %?\n%T")
	;; ("8" "Calligraphy.txt Todo" entry (file+headline "c:/KevinTian/Document/Calligraphy.txt" "Z_CAPTURE_")
	;;  "* TODO %<%Y_%m_%d_%H%M%S> %?\n%T")
	("8" "CloudRanDeployment.txt Todo" entry (file+headline "c:/KevinTian/Document/CloudRanDeployment.txt" "Z_CAPTURE_")
	 "* TODO %<%Y_%m_%d_%H%M%S> %?\n%T")
	("9" "CRAN.txt Todo" entry (file+headline "c:/KevinTian/Document/CRAN.txt" "Z_CAPTURE_")
	 "* TODO %<%Y_%m_%d_%H%M%S> %?\n%T")
	("." "CRAN.txt Todo" entry (file+headline "c:/KevinTian/Document/CRAN.txt" "Z_KeyTrace_")
	 "* %?\n%T")
	("," "CRAN.txt Todo" entry (file+headline "c:/KevinTian/Document/CRAN.txt" "Setup Cloud BJ")
	 "* %?\n%T")
	("e" "English.txt Todo" entry (file+headline "c:/KevinTian/Document/English.txt" "Z_CAPTURE_")
	 "* TODO %<%Y_%m_%d_%H%M%S> %?\n%T")
	("c" "Communication.txt Todo" entry (file+headline "c:/KevinTian/Document/Communication.txt" "Z_CAPTURE_")
	 "* TODO %<%Y_%m_%d_%H%M%S> %?\n%T")
	("t" "Tool.txt Todo" entry (file+headline "c:/KevinTian/Document/Repo_/DocServer/Tool.txt" "Z_CAPTURE_")
	 "* TODO %<%Y_%m_%d_%H%M%S> %?\n%T")
	("l" "Development.txt Todo" entry (file+headline "c:/KevinTian/Document/Development.txt" "Z_CAPTURE_")
	 "* TODO %<%Y_%m_%d_%H%M%S> %?\n%T")
	("f" "FtGit.txt Todo" entry (file+headline "c:/KevinTian/Document/Repo_/DocServer/FtGit.txt" "Z_CAPTURE_")
	 "* TODO %<%Y_%m_%d_%H%M%S> %?\n%T")
	("h" "Health.txt Todo" entry (file+headline "c:/KevinTian/Document/Health.txt" "Z_CAPTURE_")
	 "* TODO %<%Y_%m_%d_%H%M%S> %?\n%T")
	("s" "Shopping.txt Todo" entry (file+headline "c:/KevinTian/Document/Shopping.txt" "Z_CAPTURE_")
	 "* TODO %<%Y_%m_%d_%H%M%S> %?\n%T")
	("g" "Living.txt Todo" entry (file+headline "c:/KevinTian/Document/Living.txt" "Z_CAPTURE_")
         "* TODO %<%Y_%m_%d_%H%M%S> %?\n%T")
	("b" "Baby.txt Todo" entry (file+headline "c:/KevinTian/Document/Baby.txt" "Z_CAPTURE_")
         "* TODO %<%Y_%m_%d_%H%M%S> %?\n%T")
	("u" "Study.txt Todo" entry (file+headline "c:/KevinTian/Document/Study.txt" "Z_CAPTURE_")
         "* TODO %<%Y_%m_%d_%H%M%S> %?\n%T")
	("j" "Diary.txt Todo" entry (file+headline "t:/Diary.txt" "Z_CAPTURE_")
         "* TODO %<%Y_%m_%d_%H%M%S> %?\n%T")
	("w" "Word.txt Todo" entry (file+headline "c:/KevinTian/Document/Word.txt" "Z_CAPTURE_")
         "* TODO %<%Y_%m_%d_%H%M%S> %?\n%T")
	("m" "OrgMobile.txt Todo" entry (file+headline "c:/KevinTian/Document/OrgMobile.txt" "Z_CAPTURE_")
         "* TODO %<%Y_%m_%d_%H%M%S> %?\n%T")
	("n" "Contact.txt Todo" entry (file+headline "c:/KevinTian/Document/Contact.txt" "Z_CAPTURE_")
	 "* TODO %<%Y_%m_%d_%H%M%S> %?\n%T")
	("i" "Digest.txt Todo" entry (file+headline "c:/KevinTian/Document/Digest.txt" "Z_CAPTURE_")
	 "* TODO %<%Y_%m_%d_%H%M%S> %?\n%T")
	("m" "Emacs.txt Todo" entry (file+headline "c:/KevinTian/Document/Emacs.txt" "Z_CAPTURE_")
	 "* TODO %<%Y_%m_%d_%H%M%S> %?\n%T")
	("a" "Mail.txt Todo" entry (file+headline "c:/KevinTian/Document/Mail.txt" "Z_CAPTURE_")
	 "* TODO %<%Y_%m_%d_%H%M%S> %?\n%T")
;;;;;;;;;;;;;;;;;;;;;;; Above is Basic ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	("k" "Book.txt Todo" entry (file+headline "c:/KevinTian/Document/Book.txt" "Z_CAPTURE_")
	 "* TODO %<%Y_%m_%d_%H%M%S> %?\n%T")
	("o" "BookmarkAll.txt Todo" entry (file+headline "c:/KevinTian/Document/BookmarkAll.txt" "Z_CAPTURE_")
	 "* TODO %<%Y_%m_%d_%H%M%S> %?\n%T")
	("x" "Christianity.txt Todo" entry (file+headline "c:/KevinTian/Document/Christianity.txt" "Z_CAPTURE_")
	 "* TODO %<%Y_%m_%d_%H%M%S> %?\n%T")
	("d" "Code.txt Todo" entry (file+headline "c:/KevinTian/Document/Code.txt" "Z_CAPTURE_")
	 "* TODO %<%Y_%m_%d_%H%M%S> %?\n%T")
	("r" "Diagram.txt Todo" entry (file+headline "c:/KevinTian/Document/Diagram.txt" "Z_CAPTURE_")
	 "* TODO %<%Y_%m_%d_%H%M%S> %?\n%T")
	("j" "Job.txt Todo" entry (file+headline "c:/KevinTian/Document/Job.txt" "Z_CAPTURE_")
	 "* TODO %<%Y_%m_%d_%H%M%S> %?\n%T")
	("y" "Money.txt Todo" entry (file+headline "c:/KevinTian/Document/Money.txt" "Z_CAPTURE_")
	 "* TODO %<%Y_%m_%d_%H%M%S> %?\n%T")
	("v" "Movie.txt Todo" entry (file+headline "c:/KevinTian/Document/Movie.txt" "Z_CAPTURE_")
	 "* TODO %<%Y_%m_%d_%H%M%S> %?\n%T")
	("p" "People.txt Todo" entry (file+headline "c:/KevinTian/Document/People.txt" "Z_CAPTURE_")
	 "* TODO %<%Y_%m_%d_%H%M%S> %?\n%T")
))

