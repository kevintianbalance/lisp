;; ��Ҫ�Ǹ���˴�Ĺ�����
(tool-bar-mode -1)

;; ���� default-buffer-file-coding-system ָ���˴������ļ�ʱ�ı���ϵͳ���������ļ�������������������Ϊ�ļ���ʱ��Ӧ�������������Ի���ͨ���������������Ϊ���ʵ�Ĭ��ֵ��
;; Kevin: Deleted for it conflict with CVS control
;;(setq default-buffer-file-coding-system 'mule-utf-16-dos)
;; Kevin: Still do not support Traditional Chinese 
;; Kevin: chinese-iso-8bit-dos will be good for *.bat
;; and mule-utf-8-dos will also not recognized in *sh
(setq default-buffer-file-coding-system 'mule-utf-8-dos)
