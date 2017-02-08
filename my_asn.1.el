(add-to-list 'load-path "~/elisp/asn1-mode-master/")

(load "asn1-mode")

(add-to-list 'auto-mode-alist '("\\.asn1$" . asn1-mode))
(add-to-list 'auto-mode-alist '("\\.gdmo$" . asn1-mode))
