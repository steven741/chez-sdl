;;;; -*- mode: Scheme; -*-

;;;;
;;;;
;;;;

(import (sdl))


;; Initialize SDL 2
(sdl-set-main-ready!)

(sdl-init SDL-INIT-VIDEO)


;; Request a window
(define *window*
  (sdl-create-window "chezscheme"
		     SDL-WINDOWPOS-UNDEFINED
		     SDL-WINDOWPOS-UNDEFINED
		     640
		     480))


;; Sleep for 2 seconds
(sdl-delay 2000)


;; Exit
(sdl-destroy-window *window*)
(sdl-quit)
