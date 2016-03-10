    ;; 2 column landscape size 7 prints column 0-78, lines 1 to 70
    (setq ps-paper-type 'a4
	  ps-font-size 10.0 ;; Kevin Tian: 7.0 -> 9.0 -> 15.0 (too large, less than 70 cpl) -> 10.0 (:Selected:)
	  ps-print-header t ;; Kevin Tian: if have page number and header
	  ps-landscape-mode nil ;; Kevin Tian: if landscape mode
	  ps-number-of-columns 1) ;; Kevin Tian: if you want to print smaller, set to 2

;;     (setq ps-lpr-command "print"
;; 	  ps-printer-name "//EVF4CE46974582/backup_150_236_28_38"
;; 	  printer-name "//EVF4CE46974582/backup_150_236_28_38")

;; Depend on ghost script
;; C:\KevinTian\Software\Develop_\GhostScript_gs900w32.exe
     (setq ps-printer-name t)
;;     (setq ps-lpr-command "c:/gs/gs9.00/bin/gswin32c.exe")
     (setq ps-lpr-command "~/bin/gs9.00/bin/gswin32c.exe")
     (setq ps-lpr-switches '("-q" "-dNOPAUSE" "-dBATCH"
     			"-sDEVICE=mswinpr2"
     			"-sPAPERSIZE=a4"))
