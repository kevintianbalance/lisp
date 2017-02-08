
;; ;;20090114
;; ;; dictionary
;; (add-to-list 'load-path "~/elisp/dict")
;; (autoload 'dictionary-search "dictionary"
;; "Ask for a word and search it in all dictionaries" t)
;; (autoload 'dictionary-match-words "dictionary"
;; "Ask for a word and search all matching words in the dictionaries" t)
;; (autoload 'dictionary-lookup-definition "dictionary"
;; "Unconditionally lookup the word at point." t)
;; (autoload 'dictionary "dictionary"
;; "Create a new dictionary buffer" t)
;; ;;autosearch had been canceled
;; (autoload 'dictionary-mouse-popup-matching-words "dictionary"
;; "Display entries matching the word at the cursor"t )
;; (autoload 'dictionary-popup-matching-words "dictionary"
;; "Display entries matching the word at the point" t)
;; (autoload 'dictionary-tooltip-mode "dictionary"
;; "Display tooltips for the current word" t)
;; (autoload 'global-dictionary-tooltip-mode "dictionary"
;; "Enable/disable dictionary-tooltip-mode for all buffers" t)
;; ;; ;(global-set-key [mouse-3] 'dictionary-mouse-popup-matching-words)
;; ;; (global-set-key [(control c)(d)] 'dictionary-lookup-definition)
;; ;; (global-set-key [(control c)(s)] 'dictionary-search)
;; ;; (global-set-key [(control c)(m)] 'dictionary-match-words)
;; ;; choose a dictionary server
;; ;; TianChenModi
;; ;(setq dictionary-server "dict.org")
;; ;(setq dictionary-server "www.askoxford.com")
;; ;(setq dictionary-server "127.0.0.1")
;; ;(setq dictionary-server "localhost")




;; ;; for dictionary tooltip mode
;; ;; choose the dictionary: "wn" for WordNet
;; ;; "web1913" for Webster's Revised Unabridged Dictionary(1913)
;; ;; so on
;; (setq dictionary-tooltip-dictionary "web1913")
;; (global-dictionary-tooltip-mode t)
;; (dictionary-tooltip-mode t)
;; ;;dictionary mode settings end here


;; ;; Set Encoding of dictionary
;; (setq dictionary-coding-systems-for-dictionaries
;; (append '(("moecomp" . utf-8)
;; ("netterm" . utf-8)
;; ("pydict" . utf-8)
;; ("cedict" . utf-8)
;; ("stardic" . utf-8)
;; ("cpatch" . utf-8)
;; )
;; dictionary-coding-systems-for-dictionaries ))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; dictem
;; 2012_07_26
;; not used in ENC
;; (add-to-list 'load-path "~/elisp/dictem-1.0.3/")

;; ; Loading dictem functions
;; (require 'dictem)

;; (setq dictem-server "localhost")
;; (setq dictem-port   "2628")
;; (dictem-initialize)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; sdcv
;; 2012_07_27
(add-to-list 'load-path "~/elisp/sdcv/")
(require 'sdcv-mode)
;; (global-set-key (kbd "C-c d") 'sdcv-search)

(require 'sdcv)

;; 2012_07_27 del not work
;; (setq sdcv-dictionary-simple-list	;; a simple dictionary list
;; 			'(
;; ;;				"Oxford Advanced Learner's Dictionary"
;; 				"stardict-oald*"
;; 				))

;; (setq sdcv-dictionary-complete-list	;; a complete dictionary list
;; 			'(
;; ;;				"Oxford Advanced Learner's Dictionary"
;; 				"stardict-oald*"
;; 				))

