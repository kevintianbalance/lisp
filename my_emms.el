;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; for Mplayer in Emms
;; Comment: Not support chinese path.
(setq load-path (append load-path (list "~/elisp/emms-3.0/")))
(require 'emms-setup)
(emms-standard)
(emms-default-players)
;; global key-map
;; (global-set-key (kbd "H-x") 'emms-playlist-mode-go)

;; (global-set-key (kbd "C-c e t") 'emms-play-directory-tree)
;; (global-set-key (kbd "C-c e x") 'emms-start)
;; (global-set-key (kbd "C-c e v") 'emms-stop)
;; (global-set-key (kbd "C-c e n") 'emms-next)
;; (global-set-key (kbd "C-c e p") 'emms-previous)
;; (global-set-key (kbd "C-c e o") 'emms-show)
;; (global-set-key (kbd "C-c e h") 'emms-shuffle)
;; (global-set-key (kbd "C-c e e") 'emms-play-file)
;; (global-set-key (kbd "C-c e f") 'emms-play-playlist)
;; (global-set-key (kbd "C-c e SPC") 'emms-pause)
;; (global-set-key (kbd "C-c e a") 'emms-add-directory-tree)

;; (global-set-key (kbd "C-c e r")   'emms-toggle-repeat-track)
;; (global-set-key (kbd "C-c e R")   'emms-toggle-repeat-playlist)

;; (global-set-key (kbd "C-c e s u") 'emms-score-up-playing)
;; (global-set-key (kbd "C-c e s d") 'emms-score-down-playing)
;; (global-set-key (kbd "C-c e s o") 'emms-score-show-playing)

;; playlist-mode-map
(define-key emms-playlist-mode-map (kbd "SPC") 'emms-pause)
(define-key emms-playlist-mode-map (kbd "+") 'emms-volume-raise)
(define-key emms-playlist-mode-map (kbd "-") 'emms-volume-lower)
(define-key emms-playlist-mode-map (kbd "<right>")
  (lambda () (interactive) (emms-seek +10)))
(define-key emms-playlist-mode-map (kbd "<left>")
  (lambda () (interactive) (emms-seek -10)))
(define-key emms-playlist-mode-map (kbd "<up>")
  (lambda () (interactive) (emms-seek +60)))
(define-key emms-playlist-mode-map (kbd "<down>")
  (lambda () (interactive) (emms-seek -60)))
(define-key emms-playlist-mode-map (kbd "S u") 'emms-score-up-file-on-line)
(define-key emms-playlist-mode-map (kbd "S d") 'emms-score-down-file-on-line)
(define-key emms-playlist-mode-map (kbd "S o") 'emms-score-show-file-on-line)
(define-key emms-playlist-mode-map (kbd "S l") 'emms-score-less-tolerant)
(define-key emms-playlist-mode-map (kbd "S m") 'emms-score-more-tolerant)
(define-key emms-playlist-mode-map (kbd "S t") 'emms-score-set-tolerance)
(define-key emms-playlist-mode-map (kbd "S s") 'emms-score-show-playing)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Other emms 
;; Comment: mp3info can be set
(require 'emms-mode-line)
(require 'emms-playing-time)
(require 'emms-lyrics)
(require 'emms-i18n)
(require 'emms-history)
(require 'emms-tag-editor)
(require 'emms-volume)
(require 'emms-mark)
(require 'emms-mode-line-icon)
(require 'emms-browser)
(require 'emms-player-mplayer)
