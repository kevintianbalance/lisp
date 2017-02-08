

;; E.G. ede-cpp-root-project 
;; (ede-cpp-root-project "RootProject"
;; :name "RootProject"
;; ;; :file "/vobs/radio_testbeds_lte/lte/layer23/build/MakefileFamPm.mk"
;; ;; :file "/vobs/radio_testbeds_lte/lte/layer23/oam/fampm/testcode/MakefileFamPmTest.mk"
;; ;; :file "/vobs/radio_testbeds_lte/lte/layer23/oam/fampm/testcode/"
;; :file "/vobs/radio_testbeds_lte/lte/layer23/oam/fampm2/FamPmControl.cpp"
;; ;; Kevin
;; :include-path '("/" "/testcode" "../../../../../../radio_testbeds/tools/ATL/PQIII/src/")
;; ;; :include-path '("/testcode")
;; ;; :system-include-path '("/vobs/radio_testbeds_lte/lte/layer23/")
;; :system-include-path '("/vobs/radio_testbeds/tools/ATL/PQIII/src/")
;; )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; //Kevin Tian:  temperary delete BEGIN
;; (ede-cpp-root-project "RootProject_V2"
;; :name "RootProject_V2"
;; :file "e:/KevinTian/Working/PMCounter/Tracy Liu/pm_src_V1/HashMap.h"
;; ;; //Kevin Tian:  add your project dir here
;; :include-path '( "/" )
;; )
;; //Kevin Tian:  temperary delete ENC

;; e.g. add path to include files
;; 2010_08_03 Kevin Tian: not take effect, should use M-x      M-x semantic-add-system-include RET /some/path
;; (semantic-add-system-include "/vobs/radio_testbeds/tools/ATL/PQIII/src/" 'c++-mode)

;; //Kevin Tian: can take effect of global include
;; //Kevin Tian: !!!!!! Change !!!! to include global code
;;      M-x customize-variable RET semantic-c-dependency-system-include-path RET

;; //Kevin Tian: above line will have cededt pre7 have already load error, for eval buffer

;; (custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
;;  '(semantic-c-dependency-system-include-path (quote ("/usr/include" "/vobs/radio_testbeds/tools/ATL/PQIII/src/"))))


;; Template for making project
;; //Kevin Tian: ERROR
;; (ede-cpp-root-project "MyEdeCppPrj" 
;; 											:file "e:/KevinTian/Project/Practice_/MyEdeCppPrj/src/MailboxTest.cpp"
;; 											:include-path '("../include2")
;; 											)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 2010_08_27
(require 'semantic-c nil 'noerror)

;; //Kevin Tian: will affect "This file's system include path"
(setq semanticdb-project-roots (list (expand-file-name "/")))

;; temp delete
;; 2013_10_05
;; (defconst cedet-user-include-dirs
;; (list ".." "." "../include" "../inc" "../common" "../public"
;; 			"../.." "../../include" "../../inc" "../../common" "../../public"))
;; (defconst cedet-win32-include-dirs
;;   (list "c:/TaurusEmacs/cygwin/usr/include"
;; 				"c:/TaurusEmacs/cygwin/lib/gcc/i686-pc-cygwin/4.3.4/include/c++" 
;; 				"c:/TaurusEmacs/cygwin/lib/gcc/i686-pc-cygwin/4.3.4/include/c++/bits" 
;; 		))
;; (require 'semantic-c nil 'noerror)
;; (let ((include-dirs cedet-user-include-dirs))
;;   (when (eq system-type 'windows-nt)
;;     (setq include-dirs (append include-dirs cedet-win32-include-dirs)))
;;   (mapc (lambda (dir)
;;           (semantic-add-system-include dir 'c++-mode)
;;           (semantic-add-system-include dir 'c-mode))
;;         include-dirs))

;; jump back 
(global-set-key [S-f12]
(lambda ()
(interactive)
(if (ring-empty-p (oref semantic-mru-bookmark-ring ring))
(error "Semantic Bookmark ring is currently empty"))
(let* ((ring (oref semantic-mru-bookmark-ring ring))
(alist (semantic-mrub-ring-to-assoc-list ring))
(first (cdr (car alist))))
(if (semantic-equivalent-tag-p (oref first tag)
(semantic-current-tag))
(setq first (cdr (car (cdr alist)))))
(semantic-mrub-switch-tags first))))


;; Template for making project
;; It works!
;; for .h in seperate path
;; (setq test-project
;; (ede-cpp-root-project "MyEdeCppPrj2" 
;; 											;; root of the project
;; 											:file "e:/KevinTian/Project/Practice_/MyEdeCppPrj/src/MailboxTest.cpp"
;; 											;; can NOT set comparative path
;; 											;; two path should seperate by space
;; 											:system-include-path '("../include2" "c:/TaurusEmacs/cygwin/lib/gcc/i686-pc-cygwin/4.3.4/include/c++")
;; 											)
;; 			)

;;
(global-semantic-highlight-edits-mode)

;; Template for making project
;; It works!
;; (setq dul10-project
;; 			(ede-cpp-root-project "MyDUL10SH4_2V001Prj" 
;; 														;; root of the project
;; 														:file "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/readme_k.txt"
;; 														;; can NOT set comparative path
;; 														;; two path should seperate by space
;; 														;; for dul10 only whole patch will work
;; 														:system-include-path '(
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/common/include" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer1ctrl/include" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/appl" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/oam/fampm" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/oam/fampm/testcode" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/protocol/gtpu" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/protocol/mac" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/protocol/mac/macBs" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/protocol/mac/macUe" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/protocol/mac/macUe/rachSeq" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/protocol/mac/macUe/rachSeq/seq" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/protocol/nas/IEs" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/protocol/nas/messages" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/protocol/nas" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/protocol/pdcp" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/protocol/rlc" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/protocol/rrc/asn1src" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/protocol/rrc" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/protocol/rrc/IEs" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/protocol/rrc/messages" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/protocol/rrc/security" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/protocol/s1ap" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/protocol/s1ap/s1apconv/Headers" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/protocol/s1ap/s1apconv/S1APGenerated/Headers" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/protocol/sctp" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/protocol/x2ap/asn1src" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/protocol/x2ap" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/protocol/x2ap/IEs" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/protocol/x2ap/messages" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/test/ASN1/cpp/asn1c_decoder" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/test/ASN1/rtpersrc" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/test/ASN1/rtsrc" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/test/ASN1/rtxsrc" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/test/CppUnit/include/cppunit" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/test/CppUnit/include/cppunit/config" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/test/CppUnit/include/cppunit/extensions" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/test/CppUnit/include/cppunit/plugin" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/test/CppUnit/include/cppunit/portability" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/test/CppUnit/include/cppunit/tools" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/test/CppUnit/include/cppunit/ui/mfc" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/test/CppUnit/include/cppunit/ui/qt" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/test/CppUnit/include/cppunit/ui/text" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/test/gwsim" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/test/L1Sim" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/test/OseSim" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/test/SCTPlib/include" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/test/stubs" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/test/testCases/tmp" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/test/testCases/unitTest/appl" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/test/testCases/unitTest" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/test/testCases/unitTest/protocol/mac" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/test/testCases/unitTest/protocol/mac/macUe" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/test/testCases/unitTest/protocol/nas" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/test/testCases/unitTest/protocol/pdcp" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/test/testCases/unitTest/protocol/rrc" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/test/testCases/unitTest/protocol/s1ap" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/test/testCases/unitTest/protocol/x2ap" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/test/testCases/unitTest/util" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/test/testUtils" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/tools/sgw_simu" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/util" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/layer23/util/interfaces" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/projects/alpha_2_0_dev/dl_dlsch_encoder/layer1/test" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/projects/alpha_2_0_dev/rbs_tdd_dul10/tmp" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/projects/alpha_2_0_dev/rbs_tx_tv_10ms/fu/fu_tx_tv" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/projects/alpha_2_0_dev/rbs_tx_tv_10ms_2ant/fu/fu_tx_tv" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/lte/projects/alpha_2_0_dev/sample_project/layer1/sb/inc" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/tools/ATL/DSP/bittware/d6pc" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/tools/ATL/DSP/MINI_ATL/src" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/tools/ATL/DSP/TSAMC_2.0/src" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/tools/ATL/DSP/ver_1.0/src" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/tools/ATL/gb_server/item" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/tools/ATL/gb_server/main" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/tools/ATL/gb_server/tcp" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/tools/ATL/logserver" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/tools/ATL/logserver/test" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/tools/ATL/PQIII/driver" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/tools/ATL/PQIII/include" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/tools/ATL/PQIII/include/linux" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/tools/ATL/PQIII/src" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/tools/ATL/superbenke/common/inc" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/tools/ATL/sys2atl_2" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/tools/ctrlBl/a4ciAdapterSwU/inc" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/tools/ctrlBl/a4ciAdapterSwU/test/src/stubs" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/tools/ctrlBl/aciIfU/inc" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/tools/ctrlBl/adaptersSwU/test/src/stubs" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/tools/ctrlBl/apcinciIfU/ApcInci/inc" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/tools/ctrlBl/cciIfU/inc" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/tools/ctrlBl/cmiIfU/inc" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/tools/ctrlBl/commonSwU/inc" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/tools/ctrlBl/commonSwU/src" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/tools/ctrlBl/emiIfU/inc" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/tools/ctrlBl/epcBusSwU/inc" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/tools/ctrlBl/epcBusSwU/src" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/tools/ctrlBl/pciIfU/inc" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/tools/ctrlBl/pmiIfU/inc" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/tools/ctrlBl/ppIfU/inc" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/tools/ctrlBl/ssaIfU/inc" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/tools/ctrlBl/ssciIfU/ApcAciSsIfU/inc" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/tools/ctrlBl/ssciIfU/ApcCciSsIfU/inc" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/tools/ctrlBl/ssciIfU/ApcPciSsIfU/inc" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/tools/ctrlBl/ssciIfU/inc" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/tools/ctrlBl/startSwU/src" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/tools/ctrlBl/startSwU/test/src/stubs" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/tools/ctrlBl/traceSwU/inc" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/tools/TPL/include" 
;; 																									 "e:/KevinTian/Project/ENC_/DUL10_CPU_SH4.2_3.4_V001/tools/TPL/include/inetutil" 
;; 																									 )
;; 														)
;; 			)

;; ;; Project for Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007
;; ;; 2011_08_24
;; (setq dul10-project-Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007
;; 			(ede-cpp-root-project "Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007" 
;; 														;; root of the project
;; 														:file "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/readme_k.txt"
;; 														;; can NOT set comparative path
;; 														;; two path should seperate by space
;; 														;; for dul10 only whole patch will work
;; 														:system-include-path '(
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/common/include"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer1ctrl/include"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/appl"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/oam/fampm"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/oam/fampm/testcode"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/oam/famtrace"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/protocol/gtpu"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/protocol/mac"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/protocol/mac/macBs"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/protocol/mac/macUe"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/protocol/mac/macUe/rachSeq"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/protocol/mac/macUe/rachSeq/seq"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/protocol/nas/IEs"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/protocol/nas/messages"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/protocol/nas"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/protocol/pdcp"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/protocol/rlc"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/protocol/rrc/asn1src"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/protocol/rrc"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/protocol/rrc/IEs"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/protocol/rrc/messages"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/protocol/rrc/security"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/protocol/s1ap"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/protocol/s1ap/s1apconv/Headers"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/protocol/s1ap/s1apconv/S1APGenerated/Headers"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/protocol/sctp"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/protocol/x2ap/asn1src"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/protocol/x2ap"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/protocol/x2ap/IEs"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/protocol/x2ap/messages"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/test/ASN1/cpp/asn1c_decoder"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/test/ASN1/rtpersrc"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/test/ASN1/rtsrc"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/test/ASN1/rtxsrc"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/test/CppUnit/include/cppunit"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/test/CppUnit/include/cppunit/config"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/test/CppUnit/include/cppunit/extensions"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/test/CppUnit/include/cppunit/plugin"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/test/CppUnit/include/cppunit/portability"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/test/CppUnit/include/cppunit/tools"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/test/CppUnit/include/cppunit/ui/mfc"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/test/CppUnit/include/cppunit/ui/qt"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/test/CppUnit/include/cppunit/ui/text"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/test/gwsim"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/test/L1Sim"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/test/OseSim"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/test/SCTPlib/include"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/test/stubs"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/test/testCases/tmp"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/test/testCases/unitTest/appl"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/test/testCases/unitTest"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/test/testCases/unitTest/protocol/mac"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/test/testCases/unitTest/protocol/mac/macUe"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/test/testCases/unitTest/protocol/nas"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/test/testCases/unitTest/protocol/pdcp"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/test/testCases/unitTest/protocol/rrc"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/test/testCases/unitTest/protocol/s1ap"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/test/testCases/unitTest/protocol/x2ap"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/test/testCases/unitTest/util"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/test/testUtils"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/tools/sgw_simu"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/util"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/layer23/util/interfaces"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/projects/alpha_2_0_dev/dl_dlsch_encoder/layer1/test"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/projects/alpha_2_0_dev/rbs_tdd_dul10/tmp"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/projects/alpha_2_0_dev/rbs_tx_tv_10ms/fu/fu_tx_tv"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/projects/alpha_2_0_dev/rbs_tx_tv_10ms_2ant/fu/fu_tx_tv"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/lte/projects/alpha_2_0_dev/sample_project/layer1/sb/inc"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/tools/ATL/DSP/bittware/d6pc"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/tools/ATL/DSP/MINI_ATL/src"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/tools/ATL/DSP/TSAMC_2.0/src"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/tools/ATL/DSP/ver_1.0/src"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/tools/ATL/gb_server/item"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/tools/ATL/gb_server/main"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/tools/ATL/gb_server/tcp"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/tools/ATL/logserver"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/tools/ATL/logserver/test"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/tools/ATL/PQIII/driver"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/tools/ATL/PQIII/include"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/tools/ATL/PQIII/include/linux"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/tools/ATL/PQIII/src"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/tools/ATL/superbenke/common/inc"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/tools/ATL/sys2atl_2"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/tools/ctrlBl/a4ciAdapterSwU/inc"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/tools/ctrlBl/a4ciAdapterSwU/test/src/stubs"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/tools/ctrlBl/aciIfU/inc"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/tools/ctrlBl/adaptersSwU/test/src/stubs"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/tools/ctrlBl/apcinciIfU/ApcInci/inc"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/tools/ctrlBl/cciIfU/inc"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/tools/ctrlBl/cmiIfU/inc"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/tools/ctrlBl/commonSwU/inc"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/tools/ctrlBl/commonSwU/src"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/tools/ctrlBl/emiIfU/inc"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/tools/ctrlBl/epcBusSwU/inc"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/tools/ctrlBl/epcBusSwU/src"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/tools/ctrlBl/pciIfU/inc"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/tools/ctrlBl/pmiIfU/inc"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/tools/ctrlBl/ppIfU/inc"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/tools/ctrlBl/ssaIfU/inc"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/tools/ctrlBl/ssciIfU/ApcAciSsIfU/inc"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/tools/ctrlBl/ssciIfU/ApcCciSsIfU/inc"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/tools/ctrlBl/ssciIfU/ApcPciSsIfU/inc"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/tools/ctrlBl/ssciIfU/inc"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/tools/ctrlBl/startSwU/src"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/tools/ctrlBl/startSwU/test/src/stubs"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/tools/ctrlBl/traceSwU/inc"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/tools/TPL/include"
;; "e:/KevinTian/Project/ENC_/Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007/tools/TPL/include/inetutil"

;; 																									 )
;; 														)
;; 			)

;; ;; Project for Merlin_Sprint14B_S1MultiRabUserPlane_SH5.0_V007
;; ;; 2011_08_24
;; (setq dul10-project-Step3MultiUe_SH4.2_V003
;; 			(ede-cpp-root-project "dul10-project-Step3MultiUe_SH4.2_V003" 
;; 														;; root of the project
;; 														:file "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/readme_k.txt"
;; 														;; can NOT set comparative path
;; 														;; two path should seperate by space
;; 														;; for dul10 only whole patch will work
;; 														:system-include-path '(
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/common/include/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer1ctrl/include/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/appl/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/appl/UePmCounter/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/appl/workthread/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/oam/fampm/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/oam/fampm/testcode/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/protocol/gtpu/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/protocol/mac/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/protocol/mac/macBs/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/protocol/mac/macUe/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/protocol/mac/macUe/rachSeq/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/protocol/mac/macUe/rachSeq/seq/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/protocol/nas/IEs/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/protocol/nas/messages/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/protocol/nas/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/protocol/pdcp/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/protocol/rlc/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/protocol/rrc/asn1src/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/protocol/rrc/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/protocol/rrc/IEs/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/protocol/rrc/messages/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/protocol/rrc/security/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/protocol/s1ap/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/protocol/s1ap/s1apconv/Headers/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/protocol/s1ap/s1apconv/S1APGenerated/Headers/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/protocol/sctp/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/protocol/x2ap/asn1src/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/protocol/x2ap/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/protocol/x2ap/IEs/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/protocol/x2ap/messages/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/test/ASN1/cpp/asn1c_decoder/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/test/ASN1/rtpersrc/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/test/ASN1/rtsrc/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/test/ASN1/rtxsrc/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/test/CppUnit/include/cppunit/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/test/CppUnit/include/cppunit/config/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/test/CppUnit/include/cppunit/extensions/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/test/CppUnit/include/cppunit/plugin/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/test/CppUnit/include/cppunit/portability/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/test/CppUnit/include/cppunit/tools/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/test/CppUnit/include/cppunit/ui/mfc/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/test/CppUnit/include/cppunit/ui/qt/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/test/CppUnit/include/cppunit/ui/text/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/test/gwsim/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/test/L1Sim/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/test/OseSim/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/test/SCTPlib/include/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/test/stubs/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/test/testCases/tmp/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/test/testCases/unitTest/appl/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/test/testCases/unitTest/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/test/testCases/unitTest/protocol/mac/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/test/testCases/unitTest/protocol/mac/macUe/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/test/testCases/unitTest/protocol/nas/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/test/testCases/unitTest/protocol/pdcp/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/test/testCases/unitTest/protocol/rrc/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/test/testCases/unitTest/protocol/s1ap/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/test/testCases/unitTest/protocol/x2ap/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/test/testCases/unitTest/util/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/test/testUtils/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/tools/sgw_simu/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/util/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/layer23/util/interfaces/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/projects/alpha_2_0_dev/dl_dlsch_encoder/layer1/test/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/projects/alpha_2_0_dev/rbs_tdd_dul10/tmp/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/projects/alpha_2_0_dev/rbs_tx_tv_10ms/fu/fu_tx_tv/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/projects/alpha_2_0_dev/rbs_tx_tv_10ms_2ant/fu/fu_tx_tv/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/lte/projects/alpha_2_0_dev/sample_project/layer1/sb/inc/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/tools/ATL/DSP/bittware/d6pc/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/tools/ATL/DSP/MINI_ATL/src/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/tools/ATL/DSP/TSAMC_2.0/src/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/tools/ATL/DSP/ver_1.0/src/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/tools/ATL/gb_server/item/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/tools/ATL/gb_server/main/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/tools/ATL/gb_server/tcp/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/tools/ATL/logserver/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/tools/ATL/logserver/test/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/tools/ATL/PQIII/driver/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/tools/ATL/PQIII/include/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/tools/ATL/PQIII/include/linux/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/tools/ATL/PQIII/src/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/tools/ATL/superbenke/common/inc/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/tools/ATL/sys2atl_2/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/tools/ATL/sys2atl_2/tmp/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/tools/ctrlBl/a4ciAdapterSwU/inc/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/tools/ctrlBl/a4ciAdapterSwU/test/src/stubs/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/tools/ctrlBl/aciIfU/inc/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/tools/ctrlBl/adaptersSwU/test/src/stubs/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/tools/ctrlBl/apcinciIfU/ApcInci/inc/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/tools/ctrlBl/cciIfU/inc/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/tools/ctrlBl/cmiIfU/inc/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/tools/ctrlBl/commonSwU/inc/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/tools/ctrlBl/commonSwU/src/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/tools/ctrlBl/emiIfU/inc/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/tools/ctrlBl/epcBusSwU/inc/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/tools/ctrlBl/epcBusSwU/src/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/tools/ctrlBl/pciIfU/inc/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/tools/ctrlBl/pmiIfU/inc/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/tools/ctrlBl/ppIfU/inc/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/tools/ctrlBl/ssaIfU/inc/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/tools/ctrlBl/ssciIfU/ApcAciSsIfU/inc/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/tools/ctrlBl/ssciIfU/ApcCciSsIfU/inc/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/tools/ctrlBl/ssciIfU/ApcPciSsIfU/inc/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/tools/ctrlBl/ssciIfU/inc/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/tools/ctrlBl/startSwU/src/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/tools/ctrlBl/startSwU/test/src/stubs/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/tools/ctrlBl/traceSwU/inc/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/tools/TPL/include/"
;; "e:/KevinTian/Project/ENC_/Step3MultiUe_SH4.2_V003/tools/TPL/include/inetutil/"

;; 																									 )
;; 														)
;; 			)


;; Project for eyinyin_1200ue_rebase_sh10v004
;; 2012_05_11
;; (setq dul10-project-Step3MultiUe_SH4.2_V003
;; 			(ede-cpp-root-project "dul10-project-Step3MultiUe_SH4.2_V003" 
;; 														;; root of the project
;; 														:file "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/readme_k.txt"
;; 														;; can NOT set comparative path
;; 														;; two path should seperate by space
;; 														;; for dul10 only whole patch will work
;; 														:system-include-path '(
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/common/include/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer1ctrl/include/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/appl/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/appl/UePmCounter/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/appl/workthread/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/oam/fampm/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/oam/fampm/testcode/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/protocol/gtpu/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/protocol/mac/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/protocol/mac/macBs/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/protocol/mac/macUe/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/protocol/mac/macUe/rachSeq/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/protocol/mac/macUe/rachSeq/seq/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/protocol/nas/IEs/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/protocol/nas/messages/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/protocol/nas/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/protocol/pdcp/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/protocol/rlc/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/protocol/rrc/asn1src/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/protocol/rrc/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/protocol/rrc/IEs/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/protocol/rrc/messages/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/protocol/rrc/security/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/protocol/s1ap/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/protocol/s1ap/s1apconv/Headers/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/protocol/s1ap/s1apconv/S1APGenerated/Headers/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/protocol/sctp/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/protocol/x2ap/asn1src/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/protocol/x2ap/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/protocol/x2ap/IEs/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/protocol/x2ap/messages/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/test/ASN1/cpp/asn1c_decoder/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/test/ASN1/rtpersrc/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/test/ASN1/rtsrc/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/test/ASN1/rtxsrc/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/test/CppUnit/include/cppunit/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/test/CppUnit/include/cppunit/config/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/test/CppUnit/include/cppunit/extensions/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/test/CppUnit/include/cppunit/plugin/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/test/CppUnit/include/cppunit/portability/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/test/CppUnit/include/cppunit/tools/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/test/CppUnit/include/cppunit/ui/mfc/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/test/CppUnit/include/cppunit/ui/qt/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/test/CppUnit/include/cppunit/ui/text/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/test/gwsim/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/test/L1Sim/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/test/OseSim/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/test/SCTPlib/include/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/test/stubs/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/test/testCases/tmp/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/test/testCases/unitTest/appl/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/test/testCases/unitTest/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/test/testCases/unitTest/protocol/mac/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/test/testCases/unitTest/protocol/mac/macUe/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/test/testCases/unitTest/protocol/nas/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/test/testCases/unitTest/protocol/pdcp/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/test/testCases/unitTest/protocol/rrc/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/test/testCases/unitTest/protocol/s1ap/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/test/testCases/unitTest/protocol/x2ap/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/test/testCases/unitTest/util/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/test/testUtils/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/tools/sgw_simu/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/util/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/layer23/util/interfaces/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/projects/alpha_2_0_dev/dl_dlsch_encoder/layer1/test/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/projects/alpha_2_0_dev/rbs_tdd_dul10/tmp/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/projects/alpha_2_0_dev/rbs_tx_tv_10ms/fu/fu_tx_tv/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/projects/alpha_2_0_dev/rbs_tx_tv_10ms_2ant/fu/fu_tx_tv/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/lte/projects/alpha_2_0_dev/sample_project/layer1/sb/inc/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/tools/ATL/DSP/bittware/d6pc/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/tools/ATL/DSP/MINI_ATL/src/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/tools/ATL/DSP/TSAMC_2.0/src/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/tools/ATL/DSP/ver_1.0/src/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/tools/ATL/gb_server/item/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/tools/ATL/gb_server/main/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/tools/ATL/gb_server/tcp/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/tools/ATL/logserver/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/tools/ATL/logserver/test/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/tools/ATL/PQIII/driver/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/tools/ATL/PQIII/include/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/tools/ATL/PQIII/include/linux/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/tools/ATL/PQIII/src/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/tools/ATL/superbenke/common/inc/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/tools/ATL/sys2atl_2/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/tools/ATL/sys2atl_2/tmp/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/tools/ctrlBl/a4ciAdapterSwU/inc/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/tools/ctrlBl/a4ciAdapterSwU/test/src/stubs/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/tools/ctrlBl/aciIfU/inc/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/tools/ctrlBl/adaptersSwU/test/src/stubs/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/tools/ctrlBl/apcinciIfU/ApcInci/inc/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/tools/ctrlBl/cciIfU/inc/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/tools/ctrlBl/cmiIfU/inc/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/tools/ctrlBl/commonSwU/inc/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/tools/ctrlBl/commonSwU/src/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/tools/ctrlBl/emiIfU/inc/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/tools/ctrlBl/epcBusSwU/inc/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/tools/ctrlBl/epcBusSwU/src/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/tools/ctrlBl/pciIfU/inc/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/tools/ctrlBl/pmiIfU/inc/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/tools/ctrlBl/ppIfU/inc/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/tools/ctrlBl/ssaIfU/inc/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/tools/ctrlBl/ssciIfU/ApcAciSsIfU/inc/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/tools/ctrlBl/ssciIfU/ApcCciSsIfU/inc/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/tools/ctrlBl/ssciIfU/ApcPciSsIfU/inc/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/tools/ctrlBl/ssciIfU/inc/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/tools/ctrlBl/startSwU/src/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/tools/ctrlBl/startSwU/test/src/stubs/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/tools/ctrlBl/traceSwU/inc/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/tools/TPL/include/"
;; "e:/KevinTian/Project/ENC_/eyinyin_1200ue_rebase_sh10v004/L23/tools/TPL/include/inetutil/"

;; 																									 )
;; 														)
;; 			)


;; 2013_10_05
;; for GTest Env
(setq MyPracticeProj
      (ede-cpp-root-project "MyPracticeProj" 
			    ;; root of the project
			    :file "c:/KevinTian/Project/ENC_/RLCRestuctureSH9ByZhengHui/rlc-new/gtest-1.6.0/MyPractice/README"
			    ;; can NOT set comparative path
			    ;; two path should seperate by space
			    ;; for dul10 only whole patch will work
			    :system-include-path '(
						   "c:/KevinTian/Project/ENC_/RLCRestuctureSH9ByZhengHui/rlc-new/gtest-1.6.0/include/"
						   )
			    )
      )

;; system include c & c++ std lib
;; should put on the end of file!!!!
(semantic-reset-system-include 'c-mode)
(semantic-add-system-include (concat CYGWIN_ROOT "/usr/include") 'c-mode)
(semantic-add-system-include (concat CYGWIN_ROOT "/lib/gcc/i686-pc-cygwin/4.5.3/include/c++") 'c-mode)
(semantic-add-system-include (concat CYGWIN_ROOT "/lib/gcc/i686-pc-cygwin/4.5.3/include/c++/bits") 'c-mode)

(semantic-reset-system-include 'c++-mode)
(semantic-add-system-include (concat CYGWIN_ROOT "/usr/include") 'c++-mode)
(semantic-add-system-include (concat CYGWIN_ROOT "/lib/gcc/i686-pc-cygwin/4.5.3/include/c++") 'c++-mode)
(semantic-add-system-include (concat CYGWIN_ROOT "/lib/gcc/i686-pc-cygwin/4.5.3/include/c++/bits") 'c++-mode)

;; 2013_10_23
(setq GTestBlankEnv
      (ede-cpp-root-project "MyPracticeProj" 
			    ;; root of the project
			    :file "c:/KevinTian/Project/Practice_/GTestBlankEnv/gtest-1.6.0/MyPractice/README"
			    ;; can NOT set comparative path
			    ;; two path should seperate by space
			    ;; for dul10 only whole patch will work
			    :system-include-path '(
						   "c:/KevinTian/Project/Practice_/GTestBlankEnv/gtest-1.6.0/include/"
						   )
			    )
      )

