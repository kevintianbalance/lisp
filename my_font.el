

;; 2012_12_05
;; | :EMACS:     | Org-7.9.2 C-c ` runs the command org-table-edit-field Error on Ki server |       [fn:19]  |                                                       |            |
;; cdr: Symbol's value as variable is void: window-system-default-frame-alist

    (setq initial-frame-alist nil
          window-system-default-frame-alist
          '((x (menu-bar-lines . 1)
               (tool-bar-lines . 0)
               (vertical-scroll-bars . right)
               (left-fringe . 8)
               (right-fringe . 8)
               (foreground-color . "black")
               (background-color . "white")
               (background-mode . light)
               (font . "Monospace-8"))
            (nil (menu-bar-lines . 0)
                 (foreground-color . "white")
                 (background-color . "black")
                 (background-mode . dark)))) 
