

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; set cscope
(add-to-list 'load-path
            "~/elisp/cscope-15.7a/contrib/xcscope")

;; (add-to-list 'load-path
;;              "~/elisp/cscope-15.7a")

(require 'xcscope) ;;加xcscope

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; set etag
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; for etag copy from efengzh 2009_12_08
;; For etags or name ctags
;; use this to notify emacs:
;; M-x visit-tags-table
;; (setq tags-file-name "/vobs/erbs/omf/TAGSLte")
(setq tags-file-name "/vobs/erbs/system/LteTagsAsn")

;; new added for Linux LTE server
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; setting ecb
;; (add-to-list 'load-path
;;             "~/elisp/ecb-2.40")

;; (require 'ecb)

;; (setq ecb-auto-activate t

;;       ecb-tip-of-the-day nil)

;; (setq ecb-auto-activate t

;;       ecb-tip-of-the-day t)

