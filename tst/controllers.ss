;;;; -*- mode: Scheme; -*-

;;;;
;;;;
;;;;

(import (sdl))

(sdl-set-main-ready)
(sdl-init SDL-INIT-VIDEO
	  SDL-INIT-EVENTS)

(define win
  (sdl-create-window "chezscheme"
		     SDL-WINDOWPOS-UNDEFINED
		     SDL-WINDOWPOS-UNDEFINED
		     640
		     480
		     SDL-WINDOW-ALLOW-HIGHDPI))

(define (event-loop)
  (sdl-poll-event)
  (cond
   ((sdl-event-none?) (event-loop))
   ((sdl-event-quit?) '())
   (else
    (event-loop))))


(event-loop)

(sdl-destroy-window win)
(sdl-quit)
