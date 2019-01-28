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

(define *renderer*
  (sdl-create-renderer *window*
		       -1
		       SDL-RENDERER-ACCELERATED
		       SDL-RENDERER-PRESENT-VSYNC))

(define *bitmap* (sdl-load-bmp "lenna.bmp"))
(define *texture* (sdl-create-texture-from-surface *renderer* *bitmap*))


(sdl-render-clear *renderer*)
(sdl-render-copy *renderer* *texture*)
(sdl-render-present *renderer*)

(sdl-delay 2000)


;; Exit
(sdl-free-surface *bitmap*)
(sdl-destroy-texture *texture*)
(sdl-destroy-renderer *renderer*)
(sdl-destroy-window *window*)
(sdl-quit)
