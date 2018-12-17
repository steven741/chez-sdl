#! /usr/bin/scheme --script

;;;; -*- mode: Scheme; -*-

;;;;
;;;;
;;;;
;;;; export CHEZSCHEMELIBDIRS=/home/swatson/Desktop/chez-sdl/lib

(import (sdl (2)))

(sdl-init SDL-INIT-VIDEO
	  SDL-INIT-EVENTS)

(define win
  (sdl-create-window "chezscheme"
		     SDL-WINDOWPOS-UNDEFINED
		     SDL-WINDOWPOS-UNDEFINED
		     640
		     480
		     SDL-WINDOW-SHOWN
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
