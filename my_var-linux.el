;; 不要那个如此大的工具条
;; delete 2010_10_29, not support in Linux
;; (tool-bar-mode -1)

;; 变量 default-buffer-file-coding-system 指定了创建新文件时的编码系统。当打开新文件、创建缓冲区并保存为文件的时候将应用它。设置语言环境通常会设置这个变量为合适的默认值。
;; Kevin: Deleted for it conflict with CVS control
;;(setq default-buffer-file-coding-system 'mule-utf-16-dos)
;; Kevin: Still do not support Traditional Chinese 
;; Kevin Tian: comment out for linux system, may affect *.sh
;; (setq default-buffer-file-coding-system 'mule-utf-8-dos)
