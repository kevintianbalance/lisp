;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; old config, comment out, begin, 2010_07_14 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; old config one
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; cscope 2010_07_13

;; (add-to-list 'load-path "~/elisp/cedet-1.0pre7")
;; (add-to-list 'load-path "~/elisp/ecb-2.40")
;; (add-to-list 'load-path "~/elisp/cscope-15.7a")

;; (require 'cedet) ;;加载cedet
;; (require 'xcscope) ;;加载xcscope
;; (require 'ecb) ;;加载ecb
;; (require 'session) ;;加载session
;; (add-hook 'after-init-hook 'session-initialize) ;; 启动时初始化session
;; (require 'doxymacs) ;; 启动doxymacs
;; (put 'upcase-region 'disabled nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; old config two
;; ;===================== cedetÉèÖÃ =====================================
;; (add-to-list 'load-path "~/elisp/cedet-1.0pre4/speedbar")
;; (add-to-list 'load-path "~/elisp/cedet-1.0pre4/eieio")
;; (add-to-list 'load-path "~/elisp/cedet-1.0pre4/semantic")
;; (add-to-list 'load-path "~/elisp/cedet-1.0pre4/common")
;; (require 'cedet)
;; (add-to-list 'load-path "~/elisp/ecb-2.32")
;; (require 'ecb)
;; ;; EcbµÄ²Ù×÷:
;; ;; C-c . g d Ä¿Â¼ÁÐ±í´°¿Ú
;; ;; C-c . g s Ô´Âë´°¿Ú
;; ;; C-c . g m ·½·¨ºÍ±äÁ¿´°¿Ú
;; ;; C-c . g h ÀúÊ·´°¿Ú
;; ;; C-c . g l ×îºóÑ¡Ôñ¹ýµÄ±à¼­´°¿Ú
;; ;; C-c . g 1 ±à¼­´°¿Ú1
;; ;; C-c . g n ±à¼­´°¿Ún
;; ;; C-c . l c Ñ¡Ôñ°æÃæ
;; ;; C-c . l r ÖØ»­°æÃæ
;; ;; C-c . l t Ë©ÀÎ°æÃæ(Ëø¶¨°æÃæ)
;; ;; C-c . l w Ë©ÀÎ¿É¼ûµÄecb´°¿Ú
;; ;; C-c . \ Ë©ÀÎ±àÒï´°¿Ú
;; ;; ÆäÖÐlÎªÐ¡Ð´×ÖÄ¸(L),´ó¼Ò±ð¿´´í!!
;; ;======================cedetÉèÖÃ½áÊø==================================

;; ;; Begin config cedet
;; ;===================== cedetÉèÖÃ =====================================
;; ;; (add-to-list 'load-path "~/lisp/cedet-1.0pre3/speedbar")
;; ;; (add-to-list 'load-path "~/lisp/cedet-1.0pre3/eieio")
;; ;; (add-to-list 'load-path "~/lisp/cedet-1.0pre3/semantic")
;; ;; (add-to-list 'load-path "~/lisp/cedet-1.0pre3/common")
;; ;; (require 'cedet)
;; ;; (add-to-list 'load-path "~/lisp/ecb-2.32")
;; ;; (require 'ecb)
;; ;; EcbµÄ²Ù×÷:
;; ;; C-c . g d Ä¿Â¼ÁÐ±í´°¿Ú
;; ;; C-c . g s Ô´Âë´°¿Ú
;; ;; C-c . g m ·½·¨ºÍ±äÁ¿´°¿Ú
;; ;; C-c . g h ÀúÊ·´°¿Ú
;; ;; C-c . g l ×îºóÑ¡Ôñ¹ýµÄ±à¼­´°¿Ú
;; ;; C-c . g 1 ±à¼­´°¿Ú1
;; ;; C-c . g n ±à¼­´°¿Ún
;; ;; C-c . l c Ñ¡Ôñ°æÃæ
;; ;; C-c . l r ÖØ»­°æÃæ
;; ;; C-c . l t Ë©ÀÎ°æÃæ(Ëø¶¨°æÃæ)
;; ;; C-c . l w Ë©ÀÎ¿É¼ûµÄecb´°¿Ú
;; ;; C-c . \ Ë©ÀÎ±àÒï´°¿Ú
;; ;; ÆäÖÐlÎªÐ¡Ð´×ÖÄ¸(L),´ó¼Ò±ð¿´´í!!
;; ;======================cedetÉèÖÃ½áÊø==================================

;; ;; ;; Load CEDET.
;; ;; ;; See cedet/common/cedet.info for configuration details.
;; ;; ;; (load-file "~/cedet-VERSION/common/cedet.el")
;; ;; ;; (add-to-list 'load-path "d:/emacs-22.2/site-lisp/cedet-1.0pre6/common/cedet.el")
;; ;; (add-to-list 'load-path "d:/emacs-22.2/site-lisp/cedet-1.0pre6/common")
;; ;; (add-to-list 'load-path "d:/emacs-22.2/site-lisp/cedet-1.0pre6/speedbar")
;; ;; (add-to-list 'load-path "d:/emacs-22.2/site-lisp/cedet-1.0pre6/semantic")
;; ;; (add-to-list 'load-path "d:/emacs-22.2/site-lisp/cedet-1.0pre6/eieio")
;; ;; (add-to-list 'load-path "d:/emacs-22.2/site-lisp/cedet-1.0pre6/cogre") ;; for draw uml diagram
;; ;; (require 'cedet) ;;加载cedet

;; ;; ;; (cogre-uml-enable-unicode)
;; ;; ;; Enable EDE (Project Management) features
;; ;; (global-ede-mode 1)

;; ;; ;; Enable EDE for a pre-existing C++ project
;; ;; ;; (ede-cpp-root-project "NAME" :file "~/myproject/Makefile")


;; ;; ;; Enabling Semantic (code-parsing, smart completion) features
;; ;; ;; Select one of the following:

;; ;; ;; * This enables the database and idle reparse engines
;; ;; (semantic-load-enable-minimum-features)

;; ;; ;; * This enables some tools useful for coding, such as summary mode
;; ;; ;;   imenu support, and the semantic navigator
;; ;; (semantic-load-enable-code-helpers)

;; ;; ;; * This enables even more coding tools such as intellisense mode
;; ;; ;;   decoration mode, and stickyfunc mode (plus regular code helpers)
;; ;; ;; (semantic-load-enable-gaudy-code-helpers)

;; ;; ;; * This enables the use of Exuberent ctags if you have it installed.
;; ;; ;;   If you use C++ templates or boost, you should NOT enable it.
;; ;; ;; (semantic-load-enable-all-exuberent-ctags-support)

;; ;; ;; Enable SRecode (Template management) minor-mode.
;; ;; ;; (global-srecode-minor-mode 1)

;; ;; ;;-----------
;; ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;end cedet config;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; old config three
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; ecb & cscope set up 2009_08_25
;; (add-to-list 'load-path "d:/emacs-22.2/site-lisp/ecb-2.32")
;; ;;(add-to-list 'load-path "d:/emacs-22.2/site-lisp/planner-3.40")

;; (require 'xcscope) ;;加载xcscope

;; ;; (require 'ecb) ;;加载ecb
;; (require 'session) ;;加载session
;; (add-hook 'after-init-hook 'session-initialize) ;; 启动时初始化session
;; (require 'doxymacs) ;; 启动doxymacs
;; (put 'upcase-region 'disabled nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; old config four
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; XEmacs backwards compatibility file
;; kevin: add module in ~/.xemacs/init.el
;; Kevin: cscope & ecb is config in the file
;; Kevin: Ecb will affect w32-maximize-frame
;; (setq user-init-file
;;       (expand-file-name "init.el"
;; 			(expand-file-name ".xemacs" "~")))
;; (setq custom-file
;;       (expand-file-name "custom.el"
;; 			(expand-file-name ".xemacs" "~")))

;; (load-file user-init-file)
;; (load-file custom-file)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; old config, comment out, end, 2010_07_14 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; settting cedet 
;; Load CEDET.
;; See cedet/common/cedet.info for configuration details.
;; (load-file "~/elisp/cedet-1.0pre7/common/cedet.el")

;; Enable EDE (Project Management) features
(global-ede-mode 1)

;; Enable EDE for a pre-existing C++ project
;; (ede-cpp-root-project "NAME" :file "~/myproject/Makefile")


;; Enabling Semantic (code-parsing, smart completion) features
;; Select one of the following:

;; * This enables the database and idle reparse engines
(semantic-load-enable-minimum-features)

;; * This enables some tools useful for coding, such as summary mode
;;   imenu support, and the semantic navigator
(semantic-load-enable-code-helpers)

;; * This enables even more coding tools such as intellisense mode
;;   decoration mode, and stickyfunc mode (plus regular code helpers)
;; (semantic-load-enable-gaudy-code-helpers)

;; * This enables the use of Exuberent ctags if you have it installed.
;;   If you use C++ templates or boost, you should NOT enable it.
;; (semantic-load-enable-all-exuberent-ctags-support)
;;   Or, use one of these two types of support.
;;   Add support for new languges only via ctags.
;; (semantic-load-enable-primary-exuberent-ctags-support)
;;   Add support for using ctags as a backup parser.
;; (semantic-load-enable-secondary-exuberent-ctags-support)

;; Enable SRecode (Template management) minor-mode.
;; (global-srecode-minor-mode 1)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; setting ecb
(add-to-list 'load-path
             "~/elisp/ecb-2.40")

(require 'ecb)


