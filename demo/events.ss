;;;; -*- mode: Scheme; -*-

;;;;
;;;;
;;;;

(import (chezscheme)
	(sdl (2)))

(sdl-init (bitwise-ior
	   SDL-INIT-VIDEO
	   SDL-INIT-EVENTS))

(define win
  (sdl-create-window "chezscheme"
		     SDL-WINDOWPOS-UNDEFINED
		     SDL-WINDOWPOS-UNDEFINED
		     640
		     480
		     (bitwise-ior
		      SDL-WINDOW-SHOWN
		      SDL-WINDOW-ALLOW-HIGHDPI)))

(define (event-loop)
  (sdl-poll-event)
  (cond
   ((sdl-event-none?)    (event-loop))
   ((sdl-event-quit?)    '())
   ((sdl-event-keyup?)   (event-loop))
   ((sdl-event-keydown?) (event-loop))
   (else
    (event-loop))))

(event-loop)


(sdl-destroy-window win)
(sdl-quit)

(scheme-start (lambda fns '()))
