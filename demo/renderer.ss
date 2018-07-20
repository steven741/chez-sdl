;;;; -*- mode: Scheme; -*-

;;;;
;;;;
;;;;

(import (chezscheme)
	(sdl (2)))


;; Initialize SDL 2
(sdl-init SDL-INIT-VIDEO)


;; Request a window
(define win
  (sdl-create-window "chezscheme"
		     SDL-WINDOWPOS-UNDEFINED
		     SDL-WINDOWPOS-UNDEFINED
		     640
		     480
		     SDL-WINDOW-SHOWN))


;; Sleep for 2 seconds
(sleep (make-time 'time-duration 0 2))


;; Exit
(sdl-destroy-window win)
(sdl-quit)


;; Scheme Start
(scheme-start (lambda fns '()))
