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


(pretty-print (sdl-get-renderer-info *renderer*))


(sdl-render-clear *renderer*)

;; Blit the texture.
(sdl-render-copy *renderer* *texture* 0 0)

;; Draw a few black boxes
(sdl-set-render-draw-color! *renderer* 0 0 0 255)
(sdl-render-draw-rects *renderer* (list (make-sdl-rect   0   0 50 50)
					(make-sdl-rect 100   0 50 50)
					(make-sdl-rect   0 100 50 50)))

;; Draw a few white squares
(sdl-set-render-draw-color! *renderer* 255 255 255 255)
(sdl-render-fill-rects *renderer* (list (make-sdl-rect 200 200 50 50)
					(make-sdl-rect 300   0 50 50)
					(make-sdl-rect   0 300 50 50)))

(sdl-render-present *renderer*)


(sdl-delay 5000)

;; Exit
(sdl-free-surface *bitmap*)
(sdl-destroy-texture *texture*)
(sdl-destroy-renderer *renderer*)
(sdl-destroy-window *window*)
(sdl-quit)
