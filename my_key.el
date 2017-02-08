;; F Key
;; [f2] 'bm-next)
;; [f3] 'my-switch-to-note-other-window)
;; [f4] 'org-export-as-pdf-and-open)
;; [f5] 'highlight-symbol-at-point)
;; [f6] 'cscope-find-this-file)
;; [f7] 'cscope-find-global-definition)
;; [f8] 'cscope-find-this-symbol)
;; [f9] 'org-time-stamp)
;; [f10] 'my-insert-subtitle)
;; [f11] 'org-capture)
;; [f12] 'sdcv-search) 


;; |-----------------+-----------------------------+-------|
;; | KEY             | CMD                         |       |
;; |-----------------+-----------------------------+-------|
;; | "\C-c1"         | my-insert-time)             |       |
;; | "\C-c\C-a"      | my-add-code)                |       |
;; | "\C-c\C-b"      | speedbar)                   |       |
;; | "\C-c\C-k"      | speedbar-get-focus)         |       |
;; | "\C-c\C-m"      | my-modify-code)             |       |
;; | "\C-ca"         | appt-delete)                |       |
;; | "\C-cb"         | View-back-to-mark)          |       |
;; | "\C-cc"         | my-insert-comment)          |       |
;; | "\C-cd"         | ediff-buffers)              |       |
;; | "\C-cf"         | flyspell-region)            |       |
;; | "\C-ck"         | kill-buffer-and-window)     |       |
;; | "\C-cm"         | muse-project-publish)       |       |
;; | "\C-cn"         | flyspell-goto-next-error)   |       |
;; | "\C-cp"         | pop-global-mark)            |       |
;; | "\C-cr"         | revert-buffer)              |       |
;; | "\C-cs"         | eshell)                     |       |
;; | "\C-cs"         | my-insert-subtitle)         | DEL      |
;; | F10         | my-insert-subtitle)         |
;; | "\C-ct"         | my-insert-date)             |       |
;; | "\C-cx"         | close-all-buffers)          |       |
;; | "\C-xc"         | calendar)                   |       |
;; | "\C-xf"         | w32-maximize-frame)         |       |
;; | "\C-xg"         | w32-restore-frame)          |       |
;; | "\C-xi"         | indent-region)              |       |
;; | "\C-xl"         | toggle-truncate-lines)      |       |
;; | "\C-xp"         | pop-global-mark)            |       |
;; | "\C-xt"         | todo-show)                  | TODEL |
;; | "\M-/"          | hippie-expand)              |       |
;; | [(control ?\,)] | ska-jump-to-register)       |       |
;; | [(control ?\.)] | ska-point-to-register)      |       |
;; | [(control f3)]  | highlight-symbol-at-point)  |       |
;; | [(meta f3)]     | highlight-symbol-prev)))    |       |
;; | [(shift f3)]    | highlight-symbol-prev)      |       |
;; | [(shift f8)]    | highlight-symbol-at-point)  |       |
;; | [f10]           | org-table-sort-lines)       |   DEL    |
;; | [f11]           | org-archive-subtree)        |     DEL  |
;; | [f11]           | emms-play-directory-tree)   |       |
;; | [f4]           | org-export-as-pdf-and-open) |       |
;; | [f3]            | highlight-symbol-next)      |       |
;; | [f5]            | highlight-symbol-at-point)  |       |
;; | [f7]            | org-pomodoro ||
;; | [f2]            | ecb-deactivate)             |       |
;; | [f9]            | org-time-stamp)             |       |
;; | [f8]     | sdcv-search)        |       |

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; global key
(global-set-key "\C-cx" 'close-all-buffers)


;; Key setting
(global-set-key "\C-c\C-b" 'speedbar)
(global-set-key "\C-xc" 'calendar)
;; 2012_07_27 del2012_07_27
;; (global-set-key "\C-xt" 'todo-show) 

(global-set-key "\M-/" 'hippie-expand)

(global-set-key "\C-xf" 'w32-maximize-frame)
(global-set-key "\C-xg" 'w32-restore-frame)

;; very useful
(global-set-key "\C-xl" 'toggle-truncate-lines)
(global-set-key "\C-xp" 'pop-global-mark)
(global-set-key "\C-xi" 'indent-region)

;; (global-set-key [(control ?\.)] 'ska-point-to-register)
;; (global-set-key [(control ?\,)] 'ska-jump-to-register)
(global-set-key [(control ?\,)] 'recent-jump-jump-backward)
(global-set-key [(control ?\.)] 'recent-jump-jump-forward)

;; 2009_05_22 add frequent used function
;; \C-cd is already used for 	dictionary-lookup-definition
(global-set-key "\C-cr" 'revert-buffer)
(global-set-key "\C-cf" 'flyspell-region)
;; (global-set-key "\C-cs" 'eshell)
(global-set-key "\C-cd" 'ediff-buffers)
(global-set-key "\C-cp" 'pop-global-mark)
(global-set-key "\C-ct" 'my-insert-date)
(global-set-key "\C-cn" 'flyspell-goto-next-error)

(global-set-key "\C-ca" 'appt-delete)

(global-set-key "\C-cm" 'muse-project-publish)
;; 2010_04_08 kill-buffer-and-window, without prompt
(global-set-key "\C-ck" 'kill-buffer-and-window)

;; 2010_03_23
(global-set-key "\C-cc" 'my-insert-comment)
;; 2010_03_27
(global-set-key "\C-c1" 'my-insert-time)
;; 2010_04_28 navigate function
(global-set-key "\C-cb" 'View-back-to-mark)


;; 2010_06_07 org mode
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-co" 'org-agenda)
(define-key global-map "\C-c0" 'org-agenda-to-appt)

;; 2010_06_01
(global-set-key "\C-c\C-a" 'my-add-code)
;; 2010_06_01
(global-set-key "\C-c\C-m" 'my-modify-code)

;; 2010_07_14 fro ecb
;; (global-set-key [f7] 'ecb-activate)
;; (global-set-key [f2] 'ecb-deactivate)

;; 2010_07_19 my-insert-subtitle
;; ****** %Y_%m_%d 
;; (global-set-key "\C-cs" 'my-insert-subtitle)
(global-set-key [f10] 'my-insert-subtitle)

;; ******** 2010_07_26  org-time-stamp
(global-set-key [f9] 'org-time-stamp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CEDET - mode key
;;;;;;;;;; bind key
(global-unset-key "\C-c?")
;;;;;;;;;;;;;;;;;;;
;; unset default key binding icicle-occur
;; (global-unset-key "\C-c'") ;; seems no use
;; (put 'icicle-occur 'disabled t)


;; (defun my-cedet-hook ()
;; 	(local-set-key [(control return)] 'semantic-ia-complete-symbol)
;; 	;; :: do not take effect
;; 	;; (local-set-key "::" 'semantic-ia-complete-symbol-menu)
;; 	(local-set-key "\C-c?" 'semantic-ia-complete-symbol-menu)
;; 	;; (local-set-key ctrl-c-map "?" 'semantic-ia-complete-symbol-menu)
;; 	(local-set-key "\C-c>" 'semantic-complete-analyze-inline)
;; 	(local-set-key "\C-cp" 'semantic-analyze-proto-impl-toggle)
;;      ;; Should update the binding
;; 	(local-set-key "." 'semantic-complete-self-insert)
;; 	(local-set-key ">" 'semantic-complete-self-insert)
;; 	;; added by Kevin Tian 2010_08_04
;; 	(local-set-key [(control tab)] 'my-indent-or-complete)

;; 	;; (local-set-key "\C-c'\C-o" 'speedbar-get-focus)
;; 	;; (local-set-key "\C-c'\C-" ')
;; 	(local-set-key "\C-c'\C-r" 'semantic-symref-symbol)
;; 	(local-set-key "\C-c'\C-R" 'semantic-symref)
;; 	(local-set-key "\C-c'\C-c" 'semantic-analyze-possible-completions)
;; ;;	(local-set-key "\C-c'\C-j" 'semantic-ia-fast-jump)
;; ;;	(local-set-key [f12] 'semantic-ia-fast-jump)
;; ;;	(local-set-key "\C-c'\C-p" 'semantic-analyze-proto-impl-toggle)
;; ;;	(local-set-key [M-S-f12] 'semantic-analyze-proto-impl-toggle)
;; 	(local-set-key "\C-c'\C-f" 'global-semantic-tag-folding-mode)
;; 	(local-set-key "\C-c'\C-m" 'eassist-list-methods)
;; 	)

;; copy from p4 of "A Gentle inroduction to Cedet.pdf"
(defun my-cedet-hook()
  (local-set-key [(control return)] 'semantic-ia-complete-symbol)
  (local-set-key "\C-c?"'semantic-ia-complete-symbol-menu)
  (local-set-key "\C-c>"'semantic-complete-analyze-inline)
  ;; added by Kevin Tian
  (local-set-key "\C-c'\C-m" 'eassist-list-methods)
  ;; added by Kevin Tian, end

  (local-set-key "\C-cp"'semantic-analyze-proto-impl-toggle))
(add-hook 'c-mode-common-hook 'my-cedet-hook)

(add-hook 'c-mode-common-hook 'my-cedet-hook)
(add-hook 'c++-mode-hook 'my-cedet-hook)
(add-hook 'c-mode-hook 'my-cedet-hook)

(global-set-key "\C-c'\C-k" 'speedbar-get-focus)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; f10 conbined with org-table-sort-lines
;; (global-set-key [f10] 'org-table-sort-lines)
;; (global-set-key [f11] 'org-archive-subtree)

;;;;;;;;;;;;;;;;;;;;
;; f5 for 'highlight-symbol-at-point

;; (global-set-key [(control f3)] 'highlight-symbol-at-point)
;; (global-set-key [(shift f8)] 'highlight-symbol-at-point)
(global-set-key [f5] 'highlight-symbol-at-point)
;; (global-set-key [f3] 'highlight-symbol-next)
;; (global-set-key [(shift f3)] 'highlight-symbol-prev)
;; (global-set-key [(meta f3)] 'highlight-symbol-prev)))

;; new temp
;; (global-set-key [f4] 'org-export-as-pdf-and-open)
(global-set-key [f4] 'my-org-pomodoro)
;; (global-set-key [f11] 'emms-play-directory-tree)

;; 2012_07_27
;; sdcv
(global-set-key [f12] 'sdcv-search) 

;; set cscope shortcut
(global-set-key [f6] 'cscope-find-this-file)
(global-set-key [f7] 'cscope-find-global-definition)
(global-set-key [f8] 'cscope-find-this-symbol)

;; 2012_12_06
;; (global-set-key (kbd "C-S-l") 'my-horizontal-recenter)
;;;; change to C-M-l for server can not type S
(global-set-key (kbd "C-M-l") 'my-horizontal-recenter)

;; 2013_01_29
;; (global-set-key [f3] 'org-pomodoro)

;; 2013_07_23
(global-set-key [f3] 'my-switch-to-note-other-window)
(global-set-key (kbd "<C-f3>") 'my-switch-to-note-shortcut-other-window)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Visible Bookmarks
;; https://github.com/joodland/bm
;; 2013_12_24_094208
;; Keep same with [[file:my_cedet.el::(enable-visual-studio-bookmarks)]]
(global-set-key [f2] 'bm-toggle)
(global-set-key (kbd "<C-f2>") 'bm-next)
(global-set-key (kbd "<S-f2>") 'bm-previous)


;; org-capture
(global-set-key [f11] 'org-capture)

;; 2016_01_17_151207
;; for formating org text  ---- :@@@@@@:
;; (global-set-key [(control tab)] 'string-insert-rectangle)
(global-set-key (kbd "C-/") 'string-insert-rectangle)

;; comment-region
(global-set-key (kbd "C-'") 'comment-region)
