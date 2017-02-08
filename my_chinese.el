;;;;;;;;;;;;;;;;;;;; TianChen Add 20090121
;; 中文设置
;; 这一部分是所有系统都要设置的

(set-language-environment 'Chinese-GB) ; open for chinese display
;(set-language-environment 'Chinese-GBK) ; not defined
;(set-language-environment 'Chinese-GB18030) ; not defined

;; comment for coding using mule-utf-8-dos
;;(set-language-environment 'Chinese-BIG5)
;; (set-keyboard-coding-system 'euc-cn)
;; (set-clipboard-coding-system 'euc-cn)
;; (set-terminal-coding-system 'euc-cn)
;; (set-buffer-file-coding-system 'euc-cn)
;; (set-selection-coding-system 'euc-cn)
;; (modify-coding-system-alist 'process "*" 'euc-cn)
;; (setq default-process-coding-system 
;;             '(euc-cn . euc-cn))
;; (setq-default pathname-coding-system 'euc-cn)


;;;; 20090203 Support Print Chinese Character
;; BDF fonts for printing
(load-library "ps-bdf")

(setq ps-multibyte-buffer
      'bdf-font-except-latin)

(setq bdf-directory-list
      '(
        "~/intlfonts-1.2.1/Chinese"
        "~/intlfonts-1.2.1/Chinese.Big"
        "~/intlfonts-1.2.1/Chinese.X"
        "~/intlfonts-1.2.1/Chinese.X"
        "~/intlfonts-1.2.1/Japanese"
        "~/intlfonts-1.2.1/Japanese.Big"
        "~/intlfonts-1.2.1/Japanese.X"
        "~/intlfonts-1.2.1/Korean.X"))


